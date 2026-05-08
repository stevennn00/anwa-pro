import 'package:anwa_pro/core/models/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('job status labels are field-ready', () {
    expect(JobStatus.inProgress.label, 'In progress');
    expect(JobStatus.completed.label, 'Completed');
  });
}
