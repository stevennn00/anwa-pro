import 'package:flutter/material.dart';

import '../../../core/models/job_photo.dart';
import '../../../shared/widgets/empty_state.dart';
import 'photo_card.dart';

class PhotoGrid extends StatelessWidget {
  const PhotoGrid({
    super.key,
    required this.photos,
    required this.onPhotoTap,
    required this.onAddPhoto,
  });

  final List<JobPhoto> photos;
  final ValueChanged<JobPhoto> onPhotoTap;
  final VoidCallback onAddPhoto;

  @override
  Widget build(BuildContext context) {
    if (photos.isEmpty) {
      return EmptyState(
        icon: Icons.photo_camera,
        title: 'No photos yet',
        message:
            'Add before, during, and after photos to make the report useful.',
        action: FilledButton.icon(
          onPressed: onAddPhoto,
          icon: const Icon(Icons.add_a_photo),
          label: const Text('Add photos'),
        ),
      );
    }
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: photos.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 190,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.82,
      ),
      itemBuilder: (context, index) {
        final photo = photos[index];
        return PhotoCard(photo: photo, onTap: () => onPhotoTap(photo));
      },
    );
  }
}
