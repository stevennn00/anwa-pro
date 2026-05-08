import 'package:flutter/material.dart';

import '../../../core/models/enums.dart';
import '../../../core/models/job.dart';
import '../../../shared/widgets/app_card.dart';

class DashboardStatsCard extends StatelessWidget {
  const DashboardStatsCard({super.key, required this.jobs});

  final List<Job> jobs;

  @override
  Widget build(BuildContext context) {
    final active = jobs
        .where((job) => job.status == JobStatus.inProgress)
        .length;
    final completed = jobs
        .where((job) => job.status == JobStatus.completed)
        .length;
    final draft = jobs.where((job) => job.status == JobStatus.draft).length;
    return AppCard(
      child: Row(
        children: [
          Expanded(
            child: _Stat(label: 'Active', value: active.toString()),
          ),
          Expanded(
            child: _Stat(label: 'Completed', value: completed.toString()),
          ),
          Expanded(
            child: _Stat(label: 'Drafts', value: draft.toString()),
          ),
        ],
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(value, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 4),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
