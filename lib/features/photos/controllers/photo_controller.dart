import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/models/enums.dart';
import '../../../core/models/job_photo.dart';
import '../../../core/repositories/repository_providers.dart';
import '../../../core/services/service_providers.dart';

final photosForJobProvider = StreamProvider.family<List<JobPhoto>, String>((
  ref,
  jobId,
) {
  return ref.watch(photoRepositoryProvider).watchPhotosForJob(jobId);
});

final photoProvider = FutureProvider.family<JobPhoto?, String>((ref, photoId) {
  return ref.watch(photoRepositoryProvider).getPhoto(photoId);
});

final photoControllerProvider =
    StateNotifierProvider<PhotoController, AsyncValue<void>>((ref) {
      return PhotoController(ref);
    });

class PhotoController extends StateNotifier<AsyncValue<void>> {
  PhotoController(this._ref) : super(const AsyncData(null));

  final Ref _ref;

  Future<JobPhoto?> addPhoto({
    required String jobId,
    required ImageSource source,
    required PhotoCategory category,
  }) async {
    state = const AsyncLoading();
    try {
      final allowed = await _ref
          .read(permissionServiceProvider)
          .ensurePhotoSourceAvailable(source);
      if (!allowed) {
        throw Exception('Permission denied for ${source.name}.');
      }

      final photo = await _ref
          .read(photoServiceProvider)
          .pickAndStorePhoto(jobId: jobId, source: source, category: category);
      if (photo != null) {
        await _ref.read(photoRepositoryProvider).upsertPhoto(photo);
      }
      state = const AsyncData(null);
      return photo;
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
      rethrow;
    }
  }

  Future<void> savePhotoDetails(JobPhoto photo) async {
    state = const AsyncLoading();
    try {
      await _ref
          .read(photoRepositoryProvider)
          .upsertPhoto(photo.copyWith(updatedAt: DateTime.now()));
      _ref.invalidate(photoProvider(photo.id));
      state = const AsyncData(null);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
      rethrow;
    }
  }

  Future<void> deletePhoto(JobPhoto photo) async {
    state = const AsyncLoading();
    try {
      await _ref.read(photoRepositoryProvider).deletePhoto(photo.id);
      await _ref
          .read(fileStorageServiceProvider)
          .deleteFileIfExists(photo.originalPath);
      if (photo.markedUpPath != null) {
        await _ref
            .read(fileStorageServiceProvider)
            .deleteFileIfExists(photo.markedUpPath!);
      }
      state = const AsyncData(null);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
      rethrow;
    }
  }
}
