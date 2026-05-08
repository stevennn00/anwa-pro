class MaterialItem {
  const MaterialItem({
    required this.id,
    required this.jobId,
    required this.name,
    required this.quantity,
    required this.unit,
    this.unitCost,
    this.includeOnReport = true,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String jobId;
  final String name;
  final double quantity;
  final String unit;
  final double? unitCost;
  final bool includeOnReport;
  final DateTime createdAt;
  final DateTime updatedAt;

  double? get totalCost => unitCost == null ? null : quantity * unitCost!;
}
