import 'enums.dart';

class Job {
  const Job({
    required this.id,
    this.customerId,
    required this.title,
    required this.tradeType,
    this.workOrderNumber,
    this.technicianName,
    required this.jobDate,
    required this.status,
    this.summary,
    required this.createdAt,
    required this.updatedAt,
    this.archivedAt,
  });

  final String id;
  final String? customerId;
  final String title;
  final TradeType tradeType;
  final String? workOrderNumber;
  final String? technicianName;
  final DateTime jobDate;
  final JobStatus status;
  final String? summary;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? archivedAt;

  bool get isArchived => archivedAt != null || status == JobStatus.archived;

  Job copyWith({
    String? id,
    String? customerId,
    bool clearCustomerId = false,
    String? title,
    TradeType? tradeType,
    String? workOrderNumber,
    bool clearWorkOrderNumber = false,
    String? technicianName,
    bool clearTechnicianName = false,
    DateTime? jobDate,
    JobStatus? status,
    String? summary,
    bool clearSummary = false,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? archivedAt,
    bool clearArchivedAt = false,
  }) {
    return Job(
      id: id ?? this.id,
      customerId: clearCustomerId ? null : customerId ?? this.customerId,
      title: title ?? this.title,
      tradeType: tradeType ?? this.tradeType,
      workOrderNumber: clearWorkOrderNumber
          ? null
          : workOrderNumber ?? this.workOrderNumber,
      technicianName: clearTechnicianName
          ? null
          : technicianName ?? this.technicianName,
      jobDate: jobDate ?? this.jobDate,
      status: status ?? this.status,
      summary: clearSummary ? null : summary ?? this.summary,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      archivedAt: clearArchivedAt ? null : archivedAt ?? this.archivedAt,
    );
  }
}
