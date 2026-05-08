import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/models/enums.dart';
import '../../../shared/widgets/confirmation_dialog.dart';
import '../../../shared/widgets/section_header.dart';
import '../../notes/widgets/job_notes_section.dart';
import '../../photos/controllers/photo_controller.dart';
import '../../photos/widgets/photo_grid.dart';
import '../../reports/controllers/report_controller.dart';
import '../controllers/job_controller.dart';
import '../widgets/job_action_bar.dart';
import '../widgets/job_summary_card.dart';

class JobDetailScreen extends ConsumerWidget {
  const JobDetailScreen({super.key, required this.jobId});

  final String jobId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jobAsync = ref.watch(jobProvider(jobId));
    final photosAsync = ref.watch(photosForJobProvider(jobId));
    final reportsAsync = ref.watch(reportsForJobProvider(jobId));

    return jobAsync.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (error, _) =>
          Scaffold(body: Center(child: Text(error.toString()))),
      data: (job) {
        if (job == null) {
          return const Scaffold(body: Center(child: Text('Job not found.')));
        }
        final customerAsync = job.customerId == null
            ? const AsyncValue.data(null)
            : ref.watch(customerProvider(job.customerId!));

        return Scaffold(
          appBar: AppBar(
            title: const Text('Job detail'),
            actions: [
              IconButton(
                tooltip: 'Edit job',
                onPressed: () => context.go('/jobs/$jobId/edit'),
                icon: const Icon(Icons.edit),
              ),
              PopupMenuButton<_JobMenuAction>(
                onSelected: (action) => _handleMenu(context, ref, action),
                itemBuilder: (context) => const [
                  PopupMenuItem(
                    value: _JobMenuAction.archive,
                    child: Text('Archive job'),
                  ),
                  PopupMenuItem(
                    value: _JobMenuAction.delete,
                    child: Text('Delete job'),
                  ),
                ],
              ),
            ],
          ),
          body: customerAsync.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, _) => Center(child: Text(error.toString())),
            data: (customer) => ListView(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 96),
              children: [
                JobSummaryCard(job: job, customer: customer),
                const SizedBox(height: 14),
                JobActionBar(
                  onAddPhotos: () => context.go('/jobs/$jobId/photos/new'),
                  onBuildReport: () => context.go('/jobs/$jobId/reports/new'),
                ),
                const SizedBox(height: 24),
                SectionHeader(
                  title: 'Photos',
                  trailing: TextButton.icon(
                    onPressed: () => context.go('/jobs/$jobId/photos/new'),
                    icon: const Icon(Icons.add_a_photo),
                    label: const Text('Add'),
                  ),
                ),
                photosAsync.when(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, _) => Text(error.toString()),
                  data: (photos) => PhotoGrid(
                    photos: photos,
                    onPhotoTap: (photo) =>
                        context.go('/jobs/$jobId/photos/${photo.id}'),
                    onAddPhoto: () => context.go('/jobs/$jobId/photos/new'),
                  ),
                ),
                const SizedBox(height: 24),
                const SectionHeader(title: 'Notes'),
                const JobNotesSection(),
                const SizedBox(height: 24),
                SectionHeader(
                  title: 'Generated reports',
                  trailing: TextButton.icon(
                    onPressed: () => context.go('/jobs/$jobId/reports/new'),
                    icon: const Icon(Icons.picture_as_pdf),
                    label: const Text('Build'),
                  ),
                ),
                reportsAsync.when(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, _) => Text(error.toString()),
                  data: (reports) {
                    if (reports.isEmpty) {
                      return Text(
                        'No reports yet. Build a Full Job Report when the photo log is ready.',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      );
                    }
                    return Column(
                      children: [
                        for (final report in reports)
                          Card(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: ListTile(
                              leading: const Icon(Icons.picture_as_pdf),
                              title: Text(report.title),
                              subtitle: Text(report.reportType.label),
                              trailing: const Icon(Icons.chevron_right),
                              onTap: () => context.go(
                                '/jobs/$jobId/reports/${report.id}/preview',
                              ),
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _handleMenu(
    BuildContext context,
    WidgetRef ref,
    _JobMenuAction action,
  ) async {
    switch (action) {
      case _JobMenuAction.archive:
        final confirmed = await showConfirmationDialog(
          context: context,
          title: 'Archive job?',
          message: 'Archived jobs are hidden from the main dashboard.',
          confirmLabel: 'Archive',
        );
        if (confirmed) {
          await ref.read(jobControllerProvider.notifier).archiveJob(jobId);
          if (context.mounted) {
            context.go('/');
          }
        }
        break;
      case _JobMenuAction.delete:
        final confirmed = await showConfirmationDialog(
          context: context,
          title: 'Delete job?',
          message:
              'This deletes the job record and its local metadata. This cannot be undone.',
          confirmLabel: 'Delete',
          destructive: true,
        );
        if (confirmed) {
          await ref.read(jobControllerProvider.notifier).deleteJob(jobId);
          if (context.mounted) {
            context.go('/');
          }
        }
    }
  }
}

enum _JobMenuAction { archive, delete }
