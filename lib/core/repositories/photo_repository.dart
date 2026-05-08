import 'package:drift/drift.dart';

import '../database/database_service.dart';
import '../models/enums.dart';
import '../models/job_photo.dart' as domain;

abstract class PhotoRepository {
  Stream<List<domain.JobPhoto>> watchPhotosForJob(String jobId);
  Future<List<domain.JobPhoto>> getPhotosForJob(String jobId);
  Future<domain.JobPhoto?> getPhoto(String photoId);
  Future<void> upsertPhoto(domain.JobPhoto photo);
  Future<void> deletePhoto(String photoId);
}

class LocalPhotoRepository implements PhotoRepository {
  LocalPhotoRepository(this._db);

  final TradeProofDatabase _db;

  @override
  Stream<List<domain.JobPhoto>> watchPhotosForJob(String jobId) {
    final query = _db.select(_db.jobPhotos)
      ..where((tbl) => tbl.jobId.equals(jobId))
      ..orderBy([(tbl) => OrderingTerm.asc(tbl.capturedAt)]);
    return query.watch().map((rows) => rows.map(_photoFromEntity).toList());
  }

  @override
  Future<List<domain.JobPhoto>> getPhotosForJob(String jobId) async {
    final query = _db.select(_db.jobPhotos)
      ..where((tbl) => tbl.jobId.equals(jobId))
      ..orderBy([(tbl) => OrderingTerm.asc(tbl.capturedAt)]);
    return (await query.get()).map(_photoFromEntity).toList();
  }

  @override
  Future<domain.JobPhoto?> getPhoto(String photoId) async {
    final query = _db.select(_db.jobPhotos)
      ..where((tbl) => tbl.id.equals(photoId));
    final row = await query.getSingleOrNull();
    return row == null ? null : _photoFromEntity(row);
  }

  @override
  Future<void> upsertPhoto(domain.JobPhoto photo) {
    return _db
        .into(_db.jobPhotos)
        .insertOnConflictUpdate(
          JobPhotosCompanion(
            id: Value(photo.id),
            jobId: Value(photo.jobId),
            originalPath: Value(photo.originalPath),
            markedUpPath: Value(photo.markedUpPath),
            category: Value(photo.category.name),
            caption: Value(photo.caption),
            tagsJson: Value(encodeStringList(photo.tags)),
            capturedAt: Value(photo.capturedAt),
            includeInReport: Value(photo.includeInReport),
            createdAt: Value(photo.createdAt),
            updatedAt: Value(photo.updatedAt),
          ),
        );
  }

  @override
  Future<void> deletePhoto(String photoId) {
    return (_db.delete(
      _db.jobPhotos,
    )..where((tbl) => tbl.id.equals(photoId))).go();
  }
}

domain.JobPhoto _photoFromEntity(JobPhoto row) {
  return domain.JobPhoto(
    id: row.id,
    jobId: row.jobId,
    originalPath: row.originalPath,
    markedUpPath: row.markedUpPath,
    category: _enumByName(
      PhotoCategory.values,
      row.category,
      PhotoCategory.other,
    ),
    caption: row.caption,
    tags: decodeStringList(row.tagsJson),
    capturedAt: row.capturedAt,
    includeInReport: row.includeInReport,
    createdAt: row.createdAt,
    updatedAt: row.updatedAt,
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
