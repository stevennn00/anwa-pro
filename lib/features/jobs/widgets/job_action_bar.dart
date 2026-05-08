import 'package:flutter/material.dart';

import '../../../shared/widgets/app_button.dart';

class JobActionBar extends StatelessWidget {
  const JobActionBar({
    super.key,
    required this.onAddPhotos,
    required this.onBuildReport,
  });

  final VoidCallback onAddPhotos;
  final VoidCallback onBuildReport;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppButton.primary(
            label: 'Add photos',
            icon: Icons.add_a_photo,
            onPressed: onAddPhotos,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: AppButton.secondary(
            label: 'Build report',
            icon: Icons.picture_as_pdf,
            onPressed: onBuildReport,
          ),
        ),
      ],
    );
  }
}
