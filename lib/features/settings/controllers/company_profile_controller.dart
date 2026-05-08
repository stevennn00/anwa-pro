import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/models/company_profile.dart';
import '../../../core/repositories/repository_providers.dart';
import '../../../core/services/service_providers.dart';

final companyProfileProvider = StreamProvider<CompanyProfile>((ref) {
  return ref.watch(companyProfileRepositoryProvider).watchProfile();
});

final companyProfileControllerProvider =
    StateNotifierProvider<CompanyProfileController, AsyncValue<void>>((ref) {
      return CompanyProfileController(ref);
    });

class CompanyProfileController extends StateNotifier<AsyncValue<void>> {
  CompanyProfileController(this._ref) : super(const AsyncData(null));

  final Ref _ref;

  Future<void> saveProfile(CompanyProfile profile) async {
    state = const AsyncLoading();
    try {
      await _ref
          .read(companyProfileRepositoryProvider)
          .saveProfile(profile.copyWith(updatedAt: DateTime.now()));
      state = const AsyncData(null);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
      rethrow;
    }
  }

  Future<void> pickAndSaveLogo(CompanyProfile profile) async {
    state = const AsyncLoading();
    try {
      final picker = ImagePicker();
      final picked = await picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 92,
        maxWidth: 1600,
      );
      if (picked == null) {
        state = const AsyncData(null);
        return;
      }
      final path = await _ref.read(fileStorageServiceProvider).copyLogo(picked);
      await saveProfile(profile.copyWith(logoPath: path));
      state = const AsyncData(null);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
      rethrow;
    }
  }
}
