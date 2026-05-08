import 'enums.dart';

class GeneratedReport {
  const GeneratedReport({
    required this.id,
    required this.jobId,
    required this.filePath,
    required this.reportType,
    required this.template,
    required this.title,
    required this.createdAt,
  });

  final String id;
  final String jobId;
  final String filePath;
  final ReportType reportType;
  final ReportTemplate template;
  final String title;
  final DateTime createdAt;
}
