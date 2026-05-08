import 'enums.dart';

class ChangeOrder {
  const ChangeOrder({
    required this.id,
    required this.jobId,
    required this.title,
    this.reason,
    this.description,
    this.laborCost = 0,
    this.materialCost = 0,
    this.otherCost = 0,
    this.attachedPhotoIds = const [],
    required this.status,
    this.approvalSignatureId,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String jobId;
  final String title;
  final String? reason;
  final String? description;
  final double laborCost;
  final double materialCost;
  final double otherCost;
  final List<String> attachedPhotoIds;
  final ChangeOrderStatus status;
  final String? approvalSignatureId;
  final DateTime createdAt;
  final DateTime updatedAt;

  double get total => laborCost + materialCost + otherCost;
}
