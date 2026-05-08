import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../database/database_providers.dart';
import 'company_profile_repository.dart';
import 'customer_repository.dart';
import 'job_repository.dart';
import 'photo_repository.dart';
import 'report_repository.dart';

final jobRepositoryProvider = Provider<JobRepository>((ref) {
  return LocalJobRepository(ref.watch(databaseProvider));
});

final customerRepositoryProvider = Provider<CustomerRepository>((ref) {
  return LocalCustomerRepository(ref.watch(databaseProvider));
});

final photoRepositoryProvider = Provider<PhotoRepository>((ref) {
  return LocalPhotoRepository(ref.watch(databaseProvider));
});

final reportRepositoryProvider = Provider<ReportRepository>((ref) {
  return LocalReportRepository(ref.watch(databaseProvider));
});

final companyProfileRepositoryProvider = Provider<CompanyProfileRepository>((
  ref,
) {
  return LocalCompanyProfileRepository(ref.watch(databaseProvider));
});
