import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  Future<bool> ensurePhotoSourceAvailable(ImageSource source) async {
    if (source == ImageSource.camera) {
      final status = await Permission.camera.request();
      return status.isGranted || status.isLimited;
    }

    final status = await Permission.photos.request();
    if (status.isGranted || status.isLimited) {
      return true;
    }

    final storage = await Permission.storage.request();
    return storage.isGranted || storage.isLimited;
  }
}
