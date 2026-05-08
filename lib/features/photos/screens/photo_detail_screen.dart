import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/models/enums.dart';
import '../../../core/models/job_photo.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/bottom_action_bar.dart';
import '../../../shared/widgets/confirmation_dialog.dart';
import '../controllers/photo_controller.dart';
import '../widgets/photo_category_chip.dart';
import '../widgets/photo_tag_picker.dart';

class PhotoDetailScreen extends ConsumerStatefulWidget {
  const PhotoDetailScreen({
    super.key,
    required this.jobId,
    required this.photoId,
  });

  final String jobId;
  final String photoId;

  @override
  ConsumerState<PhotoDetailScreen> createState() => _PhotoDetailScreenState();
}

class _PhotoDetailScreenState extends ConsumerState<PhotoDetailScreen> {
  final _captionController = TextEditingController();
  final _tagsController = TextEditingController();
  String? _loadedPhotoId;
  PhotoCategory _category = PhotoCategory.other;
  bool _includeInReport = true;

  @override
  void dispose() {
    _captionController.dispose();
    _tagsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final photoAsync = ref.watch(photoProvider(widget.photoId));
    final state = ref.watch(photoControllerProvider);
    return photoAsync.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (error, _) =>
          Scaffold(body: Center(child: Text(error.toString()))),
      data: (photo) {
        if (photo == null) {
          return const Scaffold(body: Center(child: Text('Photo not found.')));
        }
        _hydrate(photo);
        return Scaffold(
          appBar: AppBar(
            title: const Text('Photo detail'),
            actions: [
              IconButton(
                tooltip: 'Markup',
                onPressed: () => context.go(
                  '/jobs/${widget.jobId}/photos/${widget.photoId}/markup',
                ),
                icon: const Icon(Icons.brush),
              ),
              IconButton(
                tooltip: 'Delete photo',
                onPressed: () => _delete(photo),
                icon: const Icon(Icons.delete_outline),
              ),
            ],
          ),
          bottomNavigationBar: BottomActionBar(
            children: [
              AppButton.secondary(
                label: 'Back',
                icon: Icons.arrow_back,
                onPressed: () => context.go('/jobs/${widget.jobId}'),
              ),
              AppButton.primary(
                label: 'Save',
                icon: Icons.save,
                isLoading: state.isLoading,
                onPressed: () => _save(photo),
              ),
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 96),
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: _PhotoImage(path: photo.displayPath),
                ),
              ),
              const SizedBox(height: 18),
              Text('Category', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 10),
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
              const SizedBox(height: 18),
              TextFormField(
                controller: _captionController,
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText: 'Caption',
                  hintText:
                      'What should the customer understand from this photo?',
                ),
              ),
              const SizedBox(height: 12),
              PhotoTagPicker(controller: _tagsController),
              const SizedBox(height: 8),
              SwitchListTile.adaptive(
                contentPadding: EdgeInsets.zero,
                value: _includeInReport,
                onChanged: (value) => setState(() => _includeInReport = value),
                title: const Text('Include in customer report'),
                subtitle: const Text(
                  'Turn off for internal or accidental photos.',
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _hydrate(JobPhoto photo) {
    if (_loadedPhotoId == photo.id) {
      return;
    }
    _loadedPhotoId = photo.id;
    _captionController.text = photo.caption ?? '';
    _tagsController.text = photo.tags.join(', ');
    _category = photo.category;
    _includeInReport = photo.includeInReport;
  }

  Future<void> _save(JobPhoto photo) async {
    final tags = _tagsController.text
        .split(',')
        .map((tag) => tag.trim())
        .where((tag) => tag.isNotEmpty)
        .toList();
    final updated = photo.copyWith(
      category: _category,
      caption: _captionController.text.trim().isEmpty
          ? null
          : _captionController.text.trim(),
      clearCaption: _captionController.text.trim().isEmpty,
      tags: tags,
      includeInReport: _includeInReport,
    );
    try {
      await ref
          .read(photoControllerProvider.notifier)
          .savePhotoDetails(updated);
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Photo saved.')));
      }
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Could not save photo: $error')));
      }
    }
  }

  Future<void> _delete(JobPhoto photo) async {
    final confirmed = await showConfirmationDialog(
      context: context,
      title: 'Delete photo?',
      message:
          'This removes the photo from the job and deletes its local file.',
      confirmLabel: 'Delete',
      destructive: true,
    );
    if (!confirmed) {
      return;
    }
    await ref.read(photoControllerProvider.notifier).deletePhoto(photo);
    if (mounted) {
      context.go('/jobs/${widget.jobId}');
    }
  }
}

class _PhotoImage extends StatelessWidget {
  const _PhotoImage({required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    final file = File(path);
    if (!file.existsSync()) {
      return Container(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.broken_image, size: 44),
            const SizedBox(height: 8),
            Text(
              'Photo file missing',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      );
    }
    return Image.file(file, fit: BoxFit.cover);
  }
}
