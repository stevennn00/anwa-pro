import '../models/signature_record.dart';

abstract class SignatureRepository {
  Stream<List<SignatureRecord>> watchSignaturesForJob(String jobId);
  Future<void> upsertSignature(SignatureRecord signature);
  Future<void> deleteSignature(String signatureId);
}
