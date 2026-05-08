import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../shared/widgets/app_button.dart';
import '../jobs/controllers/job_controller.dart';
import 'widgets/dashboard_stats_card.dart';
import 'widgets/recent_jobs_list.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jobs = ref.watch(jobsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('TradeProof'),
        actions: [
          IconButton(
            tooltip: 'Settings',
            onPressed: () => context.go('/settings'),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.go('/jobs/new'),
        icon: const Icon(Icons.add),
        label: const Text('New job'),
      ),
      body: jobs.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => _ErrorState(message: error.toString()),
        data: (jobs) {
          return RefreshIndicator(
            onRefresh: () async => ref.invalidate(jobsProvider),
            child: ListView(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 96),
              children: [
                Text(
                  'Document the job. Prove the work. Send the report.',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 12),
                DashboardStatsCard(jobs: jobs),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Recent jobs',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    AppButton.secondary(
                      label: 'New',
                      icon: Icons.add,
                      onPressed: () => context.go('/jobs/new'),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                RecentJobsList(
                  jobs: jobs,
                  onJobTap: (job) => context.go('/jobs/${job.id}'),
                  onCreateJob: () => context.go('/jobs/new'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _ErrorState extends StatelessWidget {
  const _ErrorState({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Text(message, textAlign: TextAlign.center),
      ),
    );
  }
}
