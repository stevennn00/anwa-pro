import 'package:flutter/material.dart';

import '../../../core/models/job.dart';
import '../../../shared/widgets/empty_state.dart';
import 'job_card.dart';

class RecentJobsList extends StatelessWidget {
  const RecentJobsList({
    super.key,
    required this.jobs,
    required this.onJobTap,
    required this.onCreateJob,
  });

  final List<Job> jobs;
  final ValueChanged<Job> onJobTap;
  final VoidCallback onCreateJob;

  @override
  Widget build(BuildContext context) {
    if (jobs.isEmpty) {
      return EmptyState(
        icon: Icons.assignment_add,
        title: 'Create the first job',
        message:
            'Start a job record, then add photos and build a report from the job detail screen.',
        action: FilledButton.icon(
          onPressed: onCreateJob,
          icon: const Icon(Icons.add),
          label: const Text('New job'),
        ),
      );
    }
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: jobs.length,
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemBuilder: (context, index) {
        final job = jobs[index];
        return JobCard(job: job, onTap: () => onJobTap(job));
      },
    );
  }
}
