import 'package:image_picker/image_picker.dart';

import '../models/enums.dart';
import '../models/job_photo.dart';
import '../utils/id_generator.dart';
import 'file_storage_service.dart';

class PhotoService {
  PhotoService({
    required FileStorageService fileStorageService,
    required IdGenerator idGenerator,
    ImagePicker? imagePicker,
  }) : _fileStorageService = fileStorageService,
       _idGenerator = idGenerator,
       _imagePicker = imagePicker ?? ImagePicker();

  final FileStorageService _fileStorageService;
  final IdGenerator _idGenerator;
  final ImagePicker _imagePicker;

  Future<JobPhoto?> pickAndStorePhoto({
    required String jobId,
    required ImageSource source,
    PhotoCategory category = PhotoCategory.other,
  }) async {
    final picked = await _imagePicker.pickImage(
      source: source,
      imageQuality: 92,
      maxWidth: 2400,
    );
    if (picked == null) {
      return null;
    }

    final now = DateTime.now();
    final photoId = _idGenerator.newId();
    final storedPath = await _fileStorageService.copyPhotoIntoJob(
      jobId: jobId,
      photoId: photoId,
      source: picked,
    );

    return JobPhoto(
      id: photoId,
      jobId: jobId,
      originalPath: storedPath,
      category: category,
      capturedAt: now,
      createdAt: now,
      updatedAt: now,
    );
  }
}
