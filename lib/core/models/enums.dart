enum JobStatus { draft, scheduled, inProgress, completed, archived }

enum TradeType {
  electrical,
  hvac,
  plumbing,
  handyman,
  remodeling,
  roofing,
  painting,
  maintenance,
  generalContractor,
  other,
}

enum PhotoCategory {
  before,
  during,
  after,
  issueFound,
  materials,
  hiddenCondition,
  safetyConcern,
  changeOrder,
  completedWork,
  other,
}

enum ChangeOrderStatus { draft, pendingApproval, approved, declined, completed }

enum SignatureType { customerApproval, customerCompletion, technician }

enum ReportType {
  fullJob,
  photoOnly,
  beforeAfter,
  changeOrder,
  completion,
  inspection,
}

enum ReportTemplate { standard, premium, compact }

extension JobStatusLabel on JobStatus {
  String get label {
    return switch (this) {
      JobStatus.draft => 'Draft',
      JobStatus.scheduled => 'Scheduled',
      JobStatus.inProgress => 'In progress',
      JobStatus.completed => 'Completed',
      JobStatus.archived => 'Archived',
    };
  }
}

extension TradeTypeLabel on TradeType {
  String get label {
    return switch (this) {
      TradeType.electrical => 'Electrical',
      TradeType.hvac => 'HVAC',
      TradeType.plumbing => 'Plumbing',
      TradeType.handyman => 'Handyman',
      TradeType.remodeling => 'Remodeling',
      TradeType.roofing => 'Roofing',
      TradeType.painting => 'Painting',
      TradeType.maintenance => 'Maintenance',
      TradeType.generalContractor => 'General contractor',
      TradeType.other => 'Other',
    };
  }
}

extension PhotoCategoryLabel on PhotoCategory {
  String get label {
    return switch (this) {
      PhotoCategory.before => 'Before',
      PhotoCategory.during => 'During',
      PhotoCategory.after => 'After',
      PhotoCategory.issueFound => 'Issue found',
      PhotoCategory.materials => 'Materials',
      PhotoCategory.hiddenCondition => 'Hidden condition',
      PhotoCategory.safetyConcern => 'Safety concern',
      PhotoCategory.changeOrder => 'Change order',
      PhotoCategory.completedWork => 'Completed work',
      PhotoCategory.other => 'Other',
    };
  }
}

extension ChangeOrderStatusLabel on ChangeOrderStatus {
  String get label {
    return switch (this) {
      ChangeOrderStatus.draft => 'Draft',
      ChangeOrderStatus.pendingApproval => 'Pending approval',
      ChangeOrderStatus.approved => 'Approved',
      ChangeOrderStatus.declined => 'Declined',
      ChangeOrderStatus.completed => 'Completed',
    };
  }
}

extension SignatureTypeLabel on SignatureType {
  String get label {
    return switch (this) {
      SignatureType.customerApproval => 'Customer approval',
      SignatureType.customerCompletion => 'Customer completion',
      SignatureType.technician => 'Technician',
    };
  }
}

extension ReportTypeLabel on ReportType {
  String get label {
    return switch (this) {
      ReportType.fullJob => 'Full Job Report',
      ReportType.photoOnly => 'Photo-Only Report',
      ReportType.beforeAfter => 'Before/After Report',
      ReportType.changeOrder => 'Change Order Report',
      ReportType.completion => 'Completion Report',
      ReportType.inspection => 'Inspection Report',
    };
  }
}

extension ReportTemplateLabel on ReportTemplate {
  String get label {
    return switch (this) {
      ReportTemplate.standard => 'Standard',
      ReportTemplate.premium => 'Premium',
      ReportTemplate.compact => 'Compact',
    };
  }
}
