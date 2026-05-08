import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../controllers/job_controller.dart';
import '../widgets/job_form.dart';

class CreateJobScreen extends ConsumerWidget {
  const CreateJobScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(jobControllerProvider);
    return JobForm(
      title: 'Create job',
      actionLabel: 'Create',
      isLoading: state.isLoading,
      onSubmit: (input) async {
        try {
          final jobId = await ref
              .read(jobControllerProvider.notifier)
              .createJob(input);
          if (context.mounted) {
            context.go('/jobs/$jobId');
          }
        } catch (error) {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Could not create job: $error')),
            );
          }
        }
      },
    );
  }
}
