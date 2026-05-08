import 'package:drift/drift.dart';

import '../database/database_service.dart';
import '../models/enums.dart';
import '../models/generated_report.dart' as domain;

abstract class ReportRepository {
  Stream<List<domain.GeneratedReport>> watchReportsForJob(String jobId);
  Future<void> addReport(domain.GeneratedReport report);
  Future<domain.GeneratedReport?> getReport(String reportId);
}

class LocalReportRepository implements ReportRepository {
  LocalReportRepository(this._db);

  final TradeProofDatabase _db;

  @override
  Stream<List<domain.GeneratedReport>> watchReportsForJob(String jobId) {
    final query = _db.select(_db.generatedReports)
      ..where((tbl) => tbl.jobId.equals(jobId))
      ..orderBy([
        (tbl) =>
            OrderingTerm(expression: tbl.createdAt, mode: OrderingMode.desc),
      ]);
    return query.watch().map((rows) => rows.map(_reportFromEntity).toList());
  }

  @override
  Future<void> addReport(domain.GeneratedReport report) {
    return _db
        .into(_db.generatedReports)
        .insertOnConflictUpdate(
          GeneratedReportsCompanion(
            id: Value(report.id),
            jobId: Value(report.jobId),
            filePath: Value(report.filePath),
            reportType: Value(report.reportType.name),
            template: Value(report.template.name),
            title: Value(report.title),
            createdAt: Value(report.createdAt),
          ),
        );
  }

  @override
  Future<domain.GeneratedReport?> getReport(String reportId) async {
    final query = _db.select(_db.generatedReports)
      ..where((tbl) => tbl.id.equals(reportId));
    final row = await query.getSingleOrNull();
    return row == null ? null : _reportFromEntity(row);
  }
}

domain.GeneratedReport _reportFromEntity(GeneratedReport row) {
  return domain.GeneratedReport(
    id: row.id,
    jobId: row.jobId,
    filePath: row.filePath,
    reportType: _enumByName(
      ReportType.values,
      row.reportType,
      ReportType.fullJob,
    ),
    template: _enumByName(
      ReportTemplate.values,
      row.template,
      ReportTemplate.standard,
    ),
    title: row.title,
    createdAt: row.createdAt,
  );
}

T _enumByName<T extends Enum>(List<T> values, String name, T fallback) {
  for (final value in values) {
    if (value.name == name) {
      return value;
    }
  }
  return fallback;
}
