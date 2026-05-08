import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/enums.dart';
import '../../../core/models/generated_report.dart';
import '../../../core/repositories/repository_providers.dart';
import '../../../core/services/service_providers.dart';

final reportsForJobProvider =
    StreamProvider.family<List<GeneratedReport>, String>((ref, jobId) {
      return ref.watch(reportRepositoryProvider).watchReportsForJob(jobId);
    });

final reportProvider = FutureProvider.family<GeneratedReport?, String>((
  ref,
  reportId,
) {
  return ref.watch(reportRepositoryProvider).getReport(reportId);
});

final reportControllerProvider =
    StateNotifierProvider<ReportController, AsyncValue<void>>((ref) {
      return ReportController(ref);
    });

class ReportController extends StateNotifier<AsyncValue<void>> {
  ReportController(this._ref) : super(const AsyncData(null));

  final Ref _ref;

  Future<GeneratedReport> generateReport({
    required String jobId,
    ReportType reportType = ReportType.fullJob,
    ReportTemplate template = ReportTemplate.standard,
  }) async {
    state = const AsyncLoading();
    try {
      final job = await _ref.read(jobRepositoryProvider).getJob(jobId);
      if (job == null) {
        throw Exception('Job not found.');
      }
      final customer = job.customerId == null
          ? null
          : await _ref
                .read(customerRepositoryProvider)
                .getCustomer(job.customerId!);
      final photos = await _ref
          .read(photoRepositoryProvider)
          .getPhotosForJob(jobId);
      final company = await _ref
          .read(companyProfileRepositoryProvider)
          .getProfile();
      final bytes = await _ref
          .read(pdfReportServiceProvider)
          .buildJobReport(
            job: job,
            customer: customer,
            companyProfile: company,
            photos: photos,
            reportType: reportType,
            template: template,
          );
      final reportId = _ref.read(idGeneratorProvider).newId();
      final title = '${job.title} ${reportType.label}';
      final filePath = await _ref
          .read(fileStorageServiceProvider)
          .saveReportPdf(
            jobId: jobId,
            reportId: reportId,
            title: title,
            bytes: bytes,
          );
      final report = GeneratedReport(
        id: reportId,
        jobId: jobId,
        filePath: filePath,
        reportType: reportType,
        template: template,
        title: title,
        createdAt: DateTime.now(),
      );
      await _ref.read(reportRepositoryProvider).addReport(report);
      state = const AsyncData(null);
      return report;
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
      rethrow;
    }
  }

  Future<void> shareReport(GeneratedReport report) async {
    state = const AsyncLoading();
    try {
      await _ref
          .read(shareServiceProvider)
          .shareFile(
            filePath: report.filePath,
            title: report.title,
            subject: report.title,
            text: 'Attached: ${report.title}',
          );
      state = const AsyncData(null);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
      rethrow;
    }
  }
}
