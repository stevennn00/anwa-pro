import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/customer.dart';
import '../../../core/models/enums.dart';
import '../../../core/models/job.dart';
import '../../../core/repositories/repository_providers.dart';
import '../../../core/utils/id_generator.dart';
import '../../../core/services/service_providers.dart';

final jobsProvider = StreamProvider<List<Job>>((ref) {
  return ref.watch(jobRepositoryProvider).watchJobs();
});

final jobProvider = StreamProvider.family<Job?, String>((ref, jobId) {
  return ref.watch(jobRepositoryProvider).watchJob(jobId);
});

final customerProvider = FutureProvider.family<Customer?, String>((ref, id) {
  return ref.watch(customerRepositoryProvider).getCustomer(id);
});

final jobControllerProvider =
    StateNotifierProvider<JobController, AsyncValue<void>>((ref) {
      return JobController(ref);
    });

class JobController extends StateNotifier<AsyncValue<void>> {
  JobController(this._ref) : super(const AsyncData(null));

  final Ref _ref;

  Future<String> createJob(CreateJobInput input) async {
    state = const AsyncLoading();
    try {
      final idGenerator = _ref.read(idGeneratorProvider);
      final now = DateTime.now();
      final customer = await _upsertCustomerFromInput(
        input: input.customer,
        idGenerator: idGenerator,
        now: now,
      );
      final jobId = idGenerator.newId();
      final job = Job(
        id: jobId,
        customerId: customer?.id,
        title: input.title.trim(),
        tradeType: input.tradeType,
        workOrderNumber: _blankToNull(input.workOrderNumber),
        technicianName: _blankToNull(input.technicianName),
        jobDate: input.jobDate,
        status: input.status,
        summary: _blankToNull(input.summary),
        createdAt: now,
        updatedAt: now,
      );
      await _ref.read(jobRepositoryProvider).upsertJob(job);
      state = const AsyncData(null);
      return jobId;
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
      rethrow;
    }
  }

  Future<void> updateJob({
    required Job existing,
    required CreateJobInput input,
  }) async {
    state = const AsyncLoading();
    try {
      final idGenerator = _ref.read(idGeneratorProvider);
      final now = DateTime.now();
      final customer = await _upsertCustomerFromInput(
        input: input.customer,
        idGenerator: idGenerator,
        now: now,
        existingCustomerId: existing.customerId,
      );
      final updated = existing.copyWith(
        customerId: customer?.id,
        clearCustomerId: customer == null,
        title: input.title.trim(),
        tradeType: input.tradeType,
        workOrderNumber: _blankToNull(input.workOrderNumber),
        clearWorkOrderNumber: _blankToNull(input.workOrderNumber) == null,
        technicianName: _blankToNull(input.technicianName),
        clearTechnicianName: _blankToNull(input.technicianName) == null,
        jobDate: input.jobDate,
        status: input.status,
        summary: _blankToNull(input.summary),
        clearSummary: _blankToNull(input.summary) == null,
        updatedAt: now,
        archivedAt: input.status == JobStatus.archived ? now : null,
        clearArchivedAt: input.status != JobStatus.archived,
      );
      await _ref.read(jobRepositoryProvider).upsertJob(updated);
      state = const AsyncData(null);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
      rethrow;
    }
  }

  Future<void> archiveJob(String jobId) async {
    state = const AsyncLoading();
    try {
      await _ref.read(jobRepositoryProvider).archiveJob(jobId);
      state = const AsyncData(null);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
      rethrow;
    }
  }

  Future<void> deleteJob(String jobId) async {
    state = const AsyncLoading();
    try {
      await _ref.read(jobRepositoryProvider).deleteJob(jobId);
      state = const AsyncData(null);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
      rethrow;
    }
  }

  Future<Customer?> _upsertCustomerFromInput({
    required CustomerInput input,
    required IdGenerator idGenerator,
    required DateTime now,
    String? existingCustomerId,
  }) async {
    final name = input.name.trim();
    if (name.isEmpty) {
      return null;
    }

    final repository = _ref.read(customerRepositoryProvider);
    final existing = existingCustomerId == null
        ? await repository.findByName(name)
        : await repository.getCustomer(existingCustomerId);
    final customer = Customer(
      id: existing?.id ?? idGenerator.newId(),
      name: name,
      phone: _blankToNull(input.phone),
      email: _blankToNull(input.email),
      address: _blankToNull(input.address),
      createdAt: existing?.createdAt ?? now,
      updatedAt: now,
    );
    await repository.upsertCustomer(customer);
    return customer;
  }
}

class CreateJobInput {
  const CreateJobInput({
    required this.title,
    required this.tradeType,
    required this.status,
    required this.jobDate,
    required this.customer,
    this.workOrderNumber,
    this.technicianName,
    this.summary,
  });

  final String title;
  final TradeType tradeType;
  final JobStatus status;
  final DateTime jobDate;
  final CustomerInput customer;
  final String? workOrderNumber;
  final String? technicianName;
  final String? summary;
}

class CustomerInput {
  const CustomerInput({
    required this.name,
    this.phone,
    this.email,
    this.address,
  });

  final String name;
  final String? phone;
  final String? email;
  final String? address;
}

String? _blankToNull(String? value) {
  final trimmed = value?.trim();
  if (trimmed == null || trimmed.isEmpty) {
    return null;
  }
  return trimmed;
}
