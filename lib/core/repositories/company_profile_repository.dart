import 'package:drift/drift.dart';

import '../database/database_service.dart';
import '../models/company_profile.dart' as domain;

abstract class CompanyProfileRepository {
  Stream<domain.CompanyProfile> watchProfile();
  Future<domain.CompanyProfile> getProfile();
  Future<void> saveProfile(domain.CompanyProfile profile);
}

class LocalCompanyProfileRepository implements CompanyProfileRepository {
  LocalCompanyProfileRepository(this._db);

  final TradeProofDatabase _db;

  @override
  Stream<domain.CompanyProfile> watchProfile() {
    final query = _db.select(_db.companyProfiles)
      ..where((tbl) => tbl.id.equals(domain.CompanyProfile.defaultId));
    return query.watchSingleOrNull().map(
      (row) =>
          row == null ? domain.CompanyProfile.empty() : _profileFromEntity(row),
    );
  }

  @override
  Future<domain.CompanyProfile> getProfile() async {
    final query = _db.select(_db.companyProfiles)
      ..where((tbl) => tbl.id.equals(domain.CompanyProfile.defaultId));
    final row = await query.getSingleOrNull();
    return row == null
        ? domain.CompanyProfile.empty()
        : _profileFromEntity(row);
  }

  @override
  Future<void> saveProfile(domain.CompanyProfile profile) {
    return _db
        .into(_db.companyProfiles)
        .insertOnConflictUpdate(
          CompanyProfilesCompanion(
            id: Value(profile.id),
            companyName: Value(profile.companyName),
            phone: Value(profile.phone),
            email: Value(profile.email),
            licenseNumber: Value(profile.licenseNumber),
            defaultTechnicianName: Value(profile.defaultTechnicianName),
            logoPath: Value(profile.logoPath),
            defaultDisclaimer: Value(profile.defaultDisclaimer),
            updatedAt: Value(profile.updatedAt),
          ),
        );
  }
}

domain.CompanyProfile _profileFromEntity(CompanyProfile row) {
  return domain.CompanyProfile(
    id: row.id,
    companyName: row.companyName,
    phone: row.phone,
    email: row.email,
    licenseNumber: row.licenseNumber,
    defaultTechnicianName: row.defaultTechnicianName,
    logoPath: row.logoPath,
    defaultDisclaimer: row.defaultDisclaimer,
    updatedAt: row.updatedAt,
  );
}
