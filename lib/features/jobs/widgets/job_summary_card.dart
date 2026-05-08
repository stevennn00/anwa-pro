import 'package:flutter/material.dart';

import '../../../core/models/customer.dart';
import '../../../core/models/enums.dart';
import '../../../core/models/job.dart';
import '../../../core/utils/date_formatters.dart';
import '../../../shared/widgets/app_card.dart';
import 'job_status_chip.dart';

class JobSummaryCard extends StatelessWidget {
  const JobSummaryCard({super.key, required this.job, required this.customer});

  final Job job;
  final Customer? customer;

  @override
  Widget build(BuildContext context) {
    final muted = Theme.of(context).colorScheme.onSurfaceVariant;
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  job.title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              JobStatusChip(status: job.status),
            ],
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 12,
            runSpacing: 8,
            children: [
              _Meta(
                icon: Icons.calendar_today,
                label: DateFormatters.shortDate.format(job.jobDate),
              ),
              _Meta(icon: Icons.handyman, label: job.tradeType.label),
              if ((job.workOrderNumber ?? '').isNotEmpty)
                _Meta(
                  icon: Icons.confirmation_number,
                  label: job.workOrderNumber!,
                ),
              if ((job.technicianName ?? '').isNotEmpty)
                _Meta(icon: Icons.badge, label: job.technicianName!),
            ],
          ),
          if (customer != null) ...[
            const Divider(height: 24),
            Text(
              customer!.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 4),
            Text(
              [
                customer!.phone,
                customer!.email,
                customer!.address,
              ].where((value) => (value ?? '').trim().isNotEmpty).join(' | '),
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: muted),
            ),
          ],
        ],
      ),
    );
  }
}

class _Meta extends StatelessWidget {
  const _Meta({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: Theme.of(context).colorScheme.primary),
        const SizedBox(width: 6),
        Text(label, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
