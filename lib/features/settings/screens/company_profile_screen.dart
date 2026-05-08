import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/company_profile.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/bottom_action_bar.dart';
import '../../../shared/widgets/field_text_input.dart';
import '../controllers/company_profile_controller.dart';

class CompanyProfileScreen extends ConsumerStatefulWidget {
  const CompanyProfileScreen({super.key});

  @override
  ConsumerState<CompanyProfileScreen> createState() =>
      _CompanyProfileScreenState();
}

class _CompanyProfileScreenState extends ConsumerState<CompanyProfileScreen> {
  final _companyController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _licenseController = TextEditingController();
  final _technicianController = TextEditingController();
  final _disclaimerController = TextEditingController();
  String? _logoPath;
  bool _hydrated = false;

  @override
  void dispose() {
    _companyController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _licenseController.dispose();
    _technicianController.dispose();
    _disclaimerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final profileAsync = ref.watch(companyProfileProvider);
    final state = ref.watch(companyProfileControllerProvider);
    return profileAsync.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (error, _) =>
          Scaffold(body: Center(child: Text(error.toString()))),
      data: (profile) {
        _hydrate(profile);
        return Scaffold(
          appBar: AppBar(title: const Text('Company profile')),
          bottomNavigationBar: BottomActionBar(
            children: [
              AppButton.secondary(
                label: 'Logo',
                icon: Icons.image,
                isLoading: state.isLoading,
                onPressed: () => _pickLogo(profile),
              ),
              AppButton.primary(
                label: 'Save',
                icon: Icons.save,
                isLoading: state.isLoading,
                onPressed: () => _save(profile),
              ),
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 96),
            children: [
              _LogoPreview(path: _logoPath),
              const SizedBox(height: 16),
              FieldTextInput(
                controller: _companyController,
                label: 'Company name',
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 12),
              FieldTextInput(
                controller: _phoneController,
                label: 'Phone',
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 12),
              FieldTextInput(
                controller: _emailController,
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 12),
              FieldTextInput(
                controller: _licenseController,
                label: 'License number',
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 12),
              FieldTextInput(
                controller: _technicianController,
                label: 'Default technician',
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 12),
              FieldTextInput(
                controller: _disclaimerController,
                label: 'Default disclaimer',
                maxLines: 4,
              ),
            ],
          ),
        );
      },
    );
  }

  void _hydrate(CompanyProfile profile) {
    if (_hydrated) {
      return;
    }
    _hydrated = true;
    _companyController.text = profile.companyName ?? '';
    _phoneController.text = profile.phone ?? '';
    _emailController.text = profile.email ?? '';
    _licenseController.text = profile.licenseNumber ?? '';
    _technicianController.text = profile.defaultTechnicianName ?? '';
    _disclaimerController.text = profile.defaultDisclaimer ?? '';
    _logoPath = profile.logoPath;
  }

  Future<void> _pickLogo(CompanyProfile profile) async {
    try {
      await ref
          .read(companyProfileControllerProvider.notifier)
          .pickAndSaveLogo(_profileFromFields(profile));
      setState(() => _hydrated = false);
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Could not save logo: $error')));
      }
    }
  }

  Future<void> _save(CompanyProfile profile) async {
    try {
      await ref
          .read(companyProfileControllerProvider.notifier)
          .saveProfile(_profileFromFields(profile));
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Company profile saved.')));
      }
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not save profile: $error')),
        );
      }
    }
  }

  CompanyProfile _profileFromFields(CompanyProfile profile) {
    return profile.copyWith(
      companyName: _blankToNull(_companyController.text),
      clearCompanyName: _blankToNull(_companyController.text) == null,
      phone: _blankToNull(_phoneController.text),
      clearPhone: _blankToNull(_phoneController.text) == null,
      email: _blankToNull(_emailController.text),
      clearEmail: _blankToNull(_emailController.text) == null,
      licenseNumber: _blankToNull(_licenseController.text),
      clearLicenseNumber: _blankToNull(_licenseController.text) == null,
      defaultTechnicianName: _blankToNull(_technicianController.text),
      clearDefaultTechnicianName:
          _blankToNull(_technicianController.text) == null,
      defaultDisclaimer: _blankToNull(_disclaimerController.text),
      clearDefaultDisclaimer: _blankToNull(_disclaimerController.text) == null,
      logoPath: _logoPath,
      clearLogoPath: _logoPath == null,
    );
  }
}

class _LogoPreview extends StatelessWidget {
  const _LogoPreview({required this.path});

  final String? path;

  @override
  Widget build(BuildContext context) {
    final file = path == null ? null : File(path!);
    final exists = file?.existsSync() ?? false;
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
      ),
      alignment: Alignment.center,
      child: exists
          ? Image.file(file!, fit: BoxFit.contain)
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.business,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                const SizedBox(height: 8),
                Text(
                  'No logo selected',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
    );
  }
}

String? _blankToNull(String value) {
  final trimmed = value.trim();
  return trimmed.isEmpty ? null : trimmed;
}
