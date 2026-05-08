import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/id_generator.dart';
import 'file_storage_service.dart';
import 'location_service.dart';
import 'pdf_report_service.dart';
import 'permission_service.dart';
import 'photo_service.dart';
import 'share_service.dart';

final idGeneratorProvider = Provider<IdGenerator>((ref) => const IdGenerator());

final fileStorageServiceProvider = Provider<FileStorageService>((ref) {
  return FileStorageService();
});

final permissionServiceProvider = Provider<PermissionService>((ref) {
  return PermissionService();
});

final photoServiceProvider = Provider<PhotoService>((ref) {
  return PhotoService(
    fileStorageService: ref.watch(fileStorageServiceProvider),
    idGenerator: ref.watch(idGeneratorProvider),
  );
});

final pdfReportServiceProvider = Provider<PdfReportService>((ref) {
  return PdfReportService();
});

final shareServiceProvider = Provider<ShareService>((ref) {
  return ShareService();
});

final locationServiceProvider = Provider<LocationService>((ref) {
  return LocationService();
});
