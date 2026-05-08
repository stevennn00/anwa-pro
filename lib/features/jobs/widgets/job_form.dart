import 'package:flutter/material.dart';

import '../../../core/models/customer.dart';
import '../../../core/models/enums.dart';
import '../../../core/models/job.dart';
import '../../../core/utils/date_formatters.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/bottom_action_bar.dart';
import '../../../shared/widgets/field_text_input.dart';
import '../controllers/job_controller.dart';

class JobForm extends StatefulWidget {
  const JobForm({
    super.key,
    required this.title,
    required this.actionLabel,
    required this.onSubmit,
    this.initialJob,
    this.initialCustomer,
    this.isLoading = false,
  });

  final String title;
  final String actionLabel;
  final Job? initialJob;
  final Customer? initialCustomer;
  final bool isLoading;
  final Future<void> Function(CreateJobInput input) onSubmit;

  @override
  State<JobForm> createState() => _JobFormState();
}

class _JobFormState extends State<JobForm> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _jobTitleController;
  late final TextEditingController _customerNameController;
  late final TextEditingController _customerPhoneController;
  late final TextEditingController _customerEmailController;
  late final TextEditingController _customerAddressController;
  late final TextEditingController _workOrderController;
  late final TextEditingController _technicianController;
  late final TextEditingController _summaryController;
  late DateTime _jobDate;
  late TradeType _tradeType;
  late JobStatus _status;

  @override
  void initState() {
    super.initState();
    final job = widget.initialJob;
    final customer = widget.initialCustomer;
    _jobTitleController = TextEditingController(text: job?.title ?? '');
    _customerNameController = TextEditingController(text: customer?.name ?? '');
    _customerPhoneController = TextEditingController(
      text: customer?.phone ?? '',
    );
    _customerEmailController = TextEditingController(
      text: customer?.email ?? '',
    );
    _customerAddressController = TextEditingController(
      text: customer?.address ?? '',
    );
    _workOrderController = TextEditingController(
      text: job?.workOrderNumber ?? '',
    );
    _technicianController = TextEditingController(
      text: job?.technicianName ?? '',
    );
    _summaryController = TextEditingController(text: job?.summary ?? '');
    _jobDate = job?.jobDate ?? DateTime.now();
    _tradeType = job?.tradeType ?? TradeType.electrical;
    _status = job?.status ?? JobStatus.inProgress;
  }

  @override
  void dispose() {
    _jobTitleController.dispose();
    _customerNameController.dispose();
    _customerPhoneController.dispose();
    _customerEmailController.dispose();
    _customerAddressController.dispose();
    _workOrderController.dispose();
    _technicianController.dispose();
    _summaryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      bottomNavigationBar: BottomActionBar(
        children: [
          AppButton.secondary(
            label: 'Cancel',
            icon: Icons.close,
            onPressed: () => Navigator.of(context).maybePop(),
          ),
          AppButton.primary(
            label: widget.actionLabel,
            icon: Icons.save,
            isLoading: widget.isLoading,
            onPressed: _submit,
          ),
        ],
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Text('Job info', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 12),
              FieldTextInput(
                controller: _jobTitleController,
                label: 'Job title',
                hint: 'Panel replacement, condenser repair...',
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if ((value ?? '').trim().isEmpty) {
                    return 'Add a job title.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<TradeType>(
                initialValue: _tradeType,
                decoration: const InputDecoration(labelText: 'Trade type'),
                items: TradeType.values
                    .map(
                      (type) => DropdownMenuItem(
                        value: type,
                        child: Text(type.label),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() => _tradeType = value);
                  }
                },
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<JobStatus>(
                initialValue: _status,
                decoration: const InputDecoration(labelText: 'Job status'),
                items: JobStatus.values
                    .where((status) => status != JobStatus.archived)
                    .map(
                      (status) => DropdownMenuItem(
                        value: status,
                        child: Text(status.label),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() => _status = value);
                  }
                },
              ),
              const SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: _pickDate,
                icon: const Icon(Icons.calendar_today),
                label: Text(
                  'Job date: ${DateFormatters.shortDate.format(_jobDate)}',
                ),
              ),
              const SizedBox(height: 12),
              FieldTextInput(
                controller: _workOrderController,
                label: 'Work order number',
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 12),
              FieldTextInput(
                controller: _technicianController,
                label: 'Technician name',
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 12),
              FieldTextInput(
                controller: _summaryController,
                label: 'Job summary',
                maxLines: 3,
              ),
              const SizedBox(height: 24),
              Text('Customer', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 12),
              FieldTextInput(
                controller: _customerNameController,
                label: 'Customer name',
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 12),
              FieldTextInput(
                controller: _customerPhoneController,
                label: 'Phone',
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 12),
              FieldTextInput(
                controller: _customerEmailController,
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 12),
              FieldTextInput(
                controller: _customerAddressController,
                label: 'Address',
                maxLines: 2,
              ),
              const SizedBox(height: 96),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _jobDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() => _jobDate = picked);
    }
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    final input = CreateJobInput(
      title: _jobTitleController.text,
      tradeType: _tradeType,
      status: _status,
      jobDate: _jobDate,
      workOrderNumber: _workOrderController.text,
      technicianName: _technicianController.text,
      summary: _summaryController.text,
      customer: CustomerInput(
        name: _customerNameController.text,
        phone: _customerPhoneController.text,
        email: _customerEmailController.text,
        address: _customerAddressController.text,
      ),
    );
    await widget.onSubmit(input);
  }
}
