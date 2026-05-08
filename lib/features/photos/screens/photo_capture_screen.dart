import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/models/enums.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/bottom_action_bar.dart';
import '../controllers/photo_controller.dart';
import '../widgets/photo_category_chip.dart';

class PhotoCaptureScreen extends ConsumerStatefulWidget {
  const PhotoCaptureScreen({super.key, required this.jobId});

  final String jobId;

  @override
  ConsumerState<PhotoCaptureScreen> createState() => _PhotoCaptureScreenState();
}

class _PhotoCaptureScreenState extends ConsumerState<PhotoCaptureScreen> {
  PhotoCategory _category = PhotoCategory.before;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(photoControllerProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Add photos')),
      bottomNavigationBar: BottomActionBar(
        children: [
          AppButton.secondary(
            label: 'Gallery',
            icon: Icons.photo_library,
            isLoading: state.isLoading,
            onPressed: () => _pick(ImageSource.gallery),
          ),
          AppButton.primary(
            label: 'Camera',
            icon: Icons.camera_alt,
            isLoading: state.isLoading,
            onPressed: () => _pick(ImageSource.camera),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Choose a category first',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'Photos keep their original files in local app storage and only metadata is saved in the database.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 18),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final category in PhotoCategory.values)
                PhotoCategoryChip(
                  category: category,
                  selected: _category == category,
                  onSelected: (_) => setState(() => _category = category),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _pick(ImageSource source) async {
    try {
      final photo = await ref
          .read(photoControllerProvider.notifier)
          .addPhoto(jobId: widget.jobId, source: source, category: _category);
      if (!mounted) {
        return;
      }
      if (photo == null) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('No photo selected.')));
        return;
      }
      context.go('/jobs/${widget.jobId}/photos/${photo.id}');
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Could not add photo: $error')));
      }
    }
  }
}
