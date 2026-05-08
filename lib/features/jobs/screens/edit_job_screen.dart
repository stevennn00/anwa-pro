import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../controllers/job_controller.dart';
import '../widgets/job_form.dart';

class EditJobScreen extends ConsumerWidget {
  const EditJobScreen({super.key, required this.jobId});

  final String jobId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jobAsync = ref.watch(jobProvider(jobId));
    final state = ref.watch(jobControllerProvider);
    return jobAsync.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (error, _) =>
          Scaffold(body: Center(child: Text(error.toString()))),
      data: (job) {
        if (job == null) {
          return const Scaffold(body: Center(child: Text('Job not found.')));
        }
        final customerAsync = job.customerId == null
            ? const AsyncValue.data(null)
            : ref.watch(customerProvider(job.customerId!));
        return customerAsync.when(
          loading: () =>
              const Scaffold(body: Center(child: CircularProgressIndicator())),
          error: (error, _) =>
              Scaffold(body: Center(child: Text(error.toString()))),
          data: (customer) => JobForm(
            title: 'Edit job',
            actionLabel: 'Save',
            initialJob: job,
            initialCustomer: customer,
            isLoading: state.isLoading,
            onSubmit: (input) async {
              try {
                await ref
                    .read(jobControllerProvider.notifier)
                    .updateJob(existing: job, input: input);
                if (context.mounted) {
                  context.go('/jobs/${job.id}');
                }
              } catch (error) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Could not save job: $error')),
                  );
                }
              }
            },
          ),
        );
      },
    );
  }
}
