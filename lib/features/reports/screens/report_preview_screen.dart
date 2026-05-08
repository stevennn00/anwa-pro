import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:printing/printing.dart';

import '../../../core/models/generated_report.dart';
import '../../../shared/widgets/empty_state.dart';
import '../controllers/report_controller.dart';

class ReportPreviewScreen extends ConsumerWidget {
  const ReportPreviewScreen({
    super.key,
    required this.jobId,
    required this.reportId,
  });

  final String jobId;
  final String reportId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reportAsync = ref.watch(reportProvider(reportId));
    return reportAsync.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (error, _) =>
          Scaffold(body: Center(child: Text(error.toString()))),
      data: (report) {
        if (report == null) {
          return const Scaffold(body: Center(child: Text('Report not found.')));
        }
        final file = File(report.filePath);
        return Scaffold(
          appBar: AppBar(
            title: const Text('Report preview'),
            leading: IconButton(
              tooltip: 'Back to job',
              onPressed: () => context.go('/jobs/$jobId'),
              icon: const Icon(Icons.arrow_back),
            ),
            actions: [
              IconButton(
                tooltip: 'Share report',
                onPressed: () => _share(context, ref, report),
                icon: const Icon(Icons.ios_share),
              ),
            ],
          ),
          body: FutureBuilder<bool>(
            future: file.exists(),
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.data != true) {
                return const EmptyState(
                  icon: Icons.file_present,
                  title: 'Report file missing',
                  message:
                      'The report metadata exists, but the PDF file is no longer in local storage.',
                );
              }
              return PdfPreview(
                canChangeOrientation: false,
                canChangePageFormat: false,
                canDebug: false,
                pdfFileName: '${report.title}.pdf',
                build: (_) async => file.readAsBytes(),
              );
            },
          ),
        );
      },
    );
  }

  Future<void> _share(
    BuildContext context,
    WidgetRef ref,
    GeneratedReport report,
  ) async {
    try {
      await ref.read(reportControllerProvider.notifier).shareReport(report);
    } catch (error) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not share report: $error')),
        );
      }
    }
  }
}
