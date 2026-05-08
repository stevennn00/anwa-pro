import '../models/job_note.dart';

abstract class NoteRepository {
  Stream<List<JobNote>> watchNotesForJob(String jobId);
  Future<void> upsertNote(JobNote note);
  Future<void> deleteNote(String noteId);
}
