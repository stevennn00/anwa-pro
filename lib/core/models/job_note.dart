class JobNote {
  const JobNote({
    required this.id,
    required this.jobId,
    required this.body,
    this.visibleOnReport = false,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String jobId;
  final String body;
  final bool visibleOnReport;
  final DateTime createdAt;
  final DateTime updatedAt;

  JobNote copyWith({
    String? id,
    String? jobId,
    String? body,
    bool? visibleOnReport,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return JobNote(
      id: id ?? this.id,
      jobId: jobId ?? this.jobId,
      body: body ?? this.body,
      visibleOnReport: visibleOnReport ?? this.visibleOnReport,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
