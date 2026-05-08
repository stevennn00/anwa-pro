import 'package:flutter/material.dart';

import '../../../core/models/enums.dart';

class JobStatusChip extends StatelessWidget {
  const JobStatusChip({super.key, required this.status});

  final JobStatus status;

  @override
  Widget build(BuildContext context) {
    final color = switch (status) {
      JobStatus.draft => Colors.blueGrey,
      JobStatus.scheduled => Colors.indigo,
      JobStatus.inProgress => Colors.orange,
      JobStatus.completed => Colors.green,
      JobStatus.archived => Colors.grey,
    };
    return Chip(
      visualDensity: VisualDensity.compact,
      side: BorderSide(color: color.withValues(alpha: 0.35)),
      backgroundColor: color.withValues(alpha: 0.12),
      label: Text(status.label),
      labelStyle: TextStyle(color: color, fontWeight: FontWeight.w800),
    );
  }
}
