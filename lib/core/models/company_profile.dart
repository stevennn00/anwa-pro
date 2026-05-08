class CompanyProfile {
  const CompanyProfile({
    required this.id,
    this.companyName,
    this.phone,
    this.email,
    this.licenseNumber,
    this.defaultTechnicianName,
    this.logoPath,
    this.defaultDisclaimer,
    required this.updatedAt,
  });

  factory CompanyProfile.empty() {
    return CompanyProfile(
      id: defaultId,
      companyName: 'TradeProof',
      defaultDisclaimer:
          'This report documents observed work conditions and completed work as of the report date.',
      updatedAt: DateTime.now(),
    );
  }

  static const defaultId = 'default';

  final String id;
  final String? companyName;
  final String? phone;
  final String? email;
  final String? licenseNumber;
  final String? defaultTechnicianName;
  final String? logoPath;
  final String? defaultDisclaimer;
  final DateTime updatedAt;

  CompanyProfile copyWith({
    String? id,
    String? companyName,
    bool clearCompanyName = false,
    String? phone,
    bool clearPhone = false,
    String? email,
    bool clearEmail = false,
    String? licenseNumber,
    bool clearLicenseNumber = false,
    String? defaultTechnicianName,
    bool clearDefaultTechnicianName = false,
    String? logoPath,
    bool clearLogoPath = false,
    String? defaultDisclaimer,
    bool clearDefaultDisclaimer = false,
    DateTime? updatedAt,
  }) {
    return CompanyProfile(
      id: id ?? this.id,
      companyName: clearCompanyName ? null : companyName ?? this.companyName,
      phone: clearPhone ? null : phone ?? this.phone,
      email: clearEmail ? null : email ?? this.email,
      licenseNumber: clearLicenseNumber
          ? null
          : licenseNumber ?? this.licenseNumber,
      defaultTechnicianName: clearDefaultTechnicianName
          ? null
          : defaultTechnicianName ?? this.defaultTechnicianName,
      logoPath: clearLogoPath ? null : logoPath ?? this.logoPath,
      defaultDisclaimer: clearDefaultDisclaimer
          ? null
          : defaultDisclaimer ?? this.defaultDisclaimer,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
