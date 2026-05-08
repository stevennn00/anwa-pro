import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/models/enums.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/bottom_action_bar.dart';
import '../../jobs/controllers/job_controller.dart';
import '../../photos/controllers/photo_controller.dart';
import '../controllers/report_controller.dart';
import '../widgets/report_option_tile.dart';
import '../widgets/report_template_picker.dart';

class ReportBuilderScreen extends ConsumerStatefulWidget {
  const ReportBuilderScreen({super.key, required this.jobId});

  final String jobId;

  @override
  ConsumerState<ReportBuilderScreen> createState() =>
      _ReportBuilderScreenState();
}

class _ReportBuilderScreenState extends ConsumerState<ReportBuilderScreen> {
  ReportType _reportType = ReportType.fullJob;
  ReportTemplate _template = ReportTemplate.standard;

  @override
  Widget build(BuildContext context) {
    final jobAsync = ref.watch(jobProvider(widget.jobId));
    final photosAsync = ref.watch(photosForJobProvider(widget.jobId));
    final state = ref.watch(reportControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Build report')),
      bottomNavigationBar: BottomActionBar(
        children: [
          AppButton.secondary(
            label: 'Cancel',
            icon: Icons.close,
            onPressed: () => context.go('/jobs/${widget.jobId}'),
          ),
          AppButton.primary(
            label: 'Generate PDF',
            icon: Icons.picture_as_pdf,
            isLoading: state.isLoading,
            onPressed: _generate,
          ),
        ],
      ),
      body: jobAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text(error.toString())),
        data: (job) {
          if (job == null) {
            return const Center(child: Text('Job not found.'));
          }
          final photos = photosAsync.valueOrNull ?? const [];
          final includedCount = photos
              .where((photo) => photo.includeInReport)
              .length;
          return ListView(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 96),
            children: [
              Text(
                job.title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              Text(
                '$includedCount report-visible photos will be included.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Report type',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              ReportOptionTile(
                icon: Icons.assignment,
                title: ReportType.fullJob.label,
                subtitle:
                    'Job details, customer info, categorized photos, captions, and disclaimer.',
                selected: _reportType == ReportType.fullJob,
                onTap: () => setState(() => _reportType = ReportType.fullJob),
              ),
              const SizedBox(height: 10),
              ReportOptionTile(
                icon: Icons.photo_library,
                title: ReportType.photoOnly.label,
                subtitle: 'Focused photo log for quick visual documentation.',
                selected: _reportType == ReportType.photoOnly,
                onTap: () => setState(() => _reportType = ReportType.photoOnly),
              ),
              const SizedBox(height: 10),
              ReportOptionTile(
                icon: Icons.compare,
                title: ReportType.beforeAfter.label,
                subtitle:
                    'Highlights before and after categories when available.',
                selected: _reportType == ReportType.beforeAfter,
                onTap: () =>
                    setState(() => _reportType = ReportType.beforeAfter),
              ),
              const SizedBox(height: 20),
              Text('Template', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 12),
              ReportTemplatePicker(
                value: _template,
                onChanged: (template) => setState(() => _template = template),
              ),
            ],
          );
        },
      ),
    );
  }

  Future<void> _generate() async {
    try {
      final report = await ref
          .read(reportControllerProvider.notifier)
          .generateReport(
            jobId: widget.jobId,
            reportType: _reportType,
            template: _template,
          );
      if (mounted) {
        context.go('/jobs/${widget.jobId}/reports/${report.id}/preview');
      }
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not generate report: $error')),
        );
      }
    }
  }
}
