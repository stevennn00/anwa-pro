import 'dart:io';
import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../utils/date_formatters.dart';

class FileStorageService {
  Future<Directory> tradeProofRoot() async {
    final documents = await getApplicationDocumentsDirectory();
    final root = Directory(p.join(documents.path, 'tradeproof'));
    await root.create(recursive: true);
    return root;
  }

  Future<Directory> jobDirectory(String jobId) async {
    final root = await tradeProofRoot();
    final directory = Directory(p.join(root.path, 'jobs', jobId));
    await directory.create(recursive: true);
    return directory;
  }

  Future<Directory> originalPhotosDirectory(String jobId) async {
    final job = await jobDirectory(jobId);
    final directory = Directory(p.join(job.path, 'photos', 'original'));
    await directory.create(recursive: true);
    return directory;
  }

  Future<Directory> markedUpPhotosDirectory(String jobId) async {
    final job = await jobDirectory(jobId);
    final directory = Directory(p.join(job.path, 'photos', 'marked_up'));
    await directory.create(recursive: true);
    return directory;
  }

  Future<Directory> signaturesDirectory(String jobId) async {
    final job = await jobDirectory(jobId);
    final directory = Directory(p.join(job.path, 'signatures'));
    await directory.create(recursive: true);
    return directory;
  }

  Future<Directory> reportsDirectory(String jobId) async {
    final job = await jobDirectory(jobId);
    final directory = Directory(p.join(job.path, 'reports'));
    await directory.create(recursive: true);
    return directory;
  }

  Future<String> copyPhotoIntoJob({
    required String jobId,
    required String photoId,
    required XFile source,
  }) async {
    final directory = await originalPhotosDirectory(jobId);
    final extension = _safeExtension(source.path, fallback: '.jpg');
    final name =
        '${DateFormatters.fileStamp.format(DateTime.now())}_$photoId$extension';
    final destination = File(p.join(directory.path, name));
    await destination.writeAsBytes(await source.readAsBytes(), flush: true);
    return destination.path;
  }

  Future<String> copyLogo(XFile source) async {
    final root = await tradeProofRoot();
    final extension = _safeExtension(source.path, fallback: '.png');
    final destination = File(p.join(root.path, 'company_logo$extension'));
    await destination.writeAsBytes(await source.readAsBytes(), flush: true);
    return destination.path;
  }

  Future<String> saveReportPdf({
    required String jobId,
    required String reportId,
    required String title,
    required Uint8List bytes,
  }) async {
    final directory = await reportsDirectory(jobId);
    final safeTitle = _safeFileSegment(title);
    final stamp = DateFormatters.fileStamp.format(DateTime.now());
    final destination = File(
      p.join(directory.path, '${stamp}_${safeTitle}_$reportId.pdf'),
    );
    await destination.writeAsBytes(bytes, flush: true);
    return destination.path;
  }

  Future<bool> fileExists(String path) => File(path).exists();

  Future<void> deleteFileIfExists(String path) async {
    final file = File(path);
    if (await file.exists()) {
      await file.delete();
    }
  }

  String _safeExtension(String path, {required String fallback}) {
    final extension = p.extension(path).toLowerCase();
    if (extension.isEmpty || extension.length > 8) {
      return fallback;
    }
    return extension;
  }

  String _safeFileSegment(String input) {
    final collapsed = input
        .trim()
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9]+'), '_')
        .replaceAll(RegExp(r'_+'), '_');
    return collapsed.isEmpty ? 'report' : collapsed;
  }
}
