import 'package:drift/drift.dart';

import '../database/database_service.dart';
import '../models/enums.dart';
import '../models/job.dart' as domain;

abstract class JobRepository {
  Stream<List<domain.Job>> watchJobs({bool includeArchived = false});
  Stream<domain.Job?> watchJob(String jobId);
  Future<domain.Job?> getJob(String jobId);
  Future<void> upsertJob(domain.Job job);
  Future<void> archiveJob(String jobId);
  Future<void> deleteJob(String jobId);
}

class LocalJobRepository implements JobRepository {
  LocalJobRepository(this._db);

  final TradeProofDatabase _db;

  @override
  Stream<List<domain.Job>> watchJobs({bool includeArchived = false}) {
    final query = _db.select(_db.jobs)
      ..orderBy([
        (tbl) => OrderingTerm(expression: tbl.jobDate, mode: OrderingMode.desc),
      ]);
    if (!includeArchived) {
      query.where((tbl) => tbl.archivedAt.isNull());
    }
    return query.watch().map((rows) => rows.map(_jobFromEntity).toList());
  }

  @override
  Stream<domain.Job?> watchJob(String jobId) {
    final query = _db.select(_db.jobs)..where((tbl) => tbl.id.equals(jobId));
    return query.watchSingleOrNull().map(
      (row) => row == null ? null : _jobFromEntity(row),
    );
  }

  @override
  Future<domain.Job?> getJob(String jobId) async {
    final query = _db.select(_db.jobs)..where((tbl) => tbl.id.equals(jobId));
    final row = await query.getSingleOrNull();
    return row == null ? null : _jobFromEntity(row);
  }

  @override
  Future<void> upsertJob(domain.Job job) {
    return _db
        .into(_db.jobs)
        .insertOnConflictUpdate(
          JobsCompanion(
            id: Value(job.id),
            customerId: Value(job.customerId),
            title: Value(job.title),
            tradeType: Value(job.tradeType.name),
            workOrderNumber: Value(job.workOrderNumber),
            technicianName: Value(job.technicianName),
            jobDate: Value(job.jobDate),
            status: Value(job.status.name),
            summary: Value(job.summary),
            createdAt: Value(job.createdAt),
            updatedAt: Value(job.updatedAt),
            archivedAt: Value(job.archivedAt),
          ),
        );
  }

  @override
  Future<void> archiveJob(String jobId) {
    final now = DateTime.now();
    return (_db.update(_db.jobs)..where((tbl) => tbl.id.equals(jobId))).write(
      JobsCompanion(
        status: Value(JobStatus.archived.name),
        updatedAt: Value(now),
        archivedAt: Value(now),
      ),
    );
  }

  @override
  Future<void> deleteJob(String jobId) => _db.deleteJobCascade(jobId);
}

domain.Job _jobFromEntity(Job row) {
  return domain.Job(
    id: row.id,
    customerId: row.customerId,
    title: row.title,
    tradeType: _enumByName(TradeType.values, row.tradeType, TradeType.other),
    workOrderNumber: row.workOrderNumber,
    technicianName: row.technicianName,
    jobDate: row.jobDate,
    status: _enumByName(JobStatus.values, row.status, JobStatus.draft),
    summary: row.summary,
    createdAt: row.createdAt,
    updatedAt: row.updatedAt,
    archivedAt: row.archivedAt,
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
