import 'enums.dart';

class SignatureRecord {
  const SignatureRecord({
    required this.id,
    required this.jobId,
    required this.type,
    required this.signerName,
    required this.filePath,
    required this.signedAt,
  });

  final String id;
  final String jobId;
  final SignatureType type;
  final String signerName;
  final String filePath;
  final DateTime signedAt;
}
