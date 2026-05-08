import 'enums.dart';

class JobPhoto {
  const JobPhoto({
    required this.id,
    required this.jobId,
    required this.originalPath,
    this.markedUpPath,
    required this.category,
    this.caption,
    this.tags = const [],
    required this.capturedAt,
    this.includeInReport = true,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String jobId;
  final String originalPath;
  final String? markedUpPath;
  final PhotoCategory category;
  final String? caption;
  final List<String> tags;
  final DateTime capturedAt;
  final bool includeInReport;
  final DateTime createdAt;
  final DateTime updatedAt;

  String get displayPath => markedUpPath ?? originalPath;

  JobPhoto copyWith({
    String? id,
    String? jobId,
    String? originalPath,
    String? markedUpPath,
    bool clearMarkedUpPath = false,
    PhotoCategory? category,
    String? caption,
    bool clearCaption = false,
    List<String>? tags,
    DateTime? capturedAt,
    bool? includeInReport,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return JobPhoto(
      id: id ?? this.id,
      jobId: jobId ?? this.jobId,
      originalPath: originalPath ?? this.originalPath,
      markedUpPath: clearMarkedUpPath
          ? null
          : markedUpPath ?? this.markedUpPath,
      category: category ?? this.category,
      caption: clearCaption ? null : caption ?? this.caption,
      tags: tags ?? this.tags,
      capturedAt: capturedAt ?? this.capturedAt,
      includeInReport: includeInReport ?? this.includeInReport,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
