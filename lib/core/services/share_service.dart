import 'dart:io';

import 'package:share_plus/share_plus.dart';

class ShareService {
  Future<ShareResult> shareFile({
    required String filePath,
    String? title,
    String? subject,
    String? text,
  }) async {
    final file = File(filePath);
    if (!await file.exists()) {
      throw const FileSystemException('Report file does not exist');
    }
    return SharePlus.instance.share(
      ShareParams(
        title: title,
        subject: subject,
        text: text,
        files: [XFile(filePath, mimeType: 'application/pdf')],
      ),
    );
  }
}
