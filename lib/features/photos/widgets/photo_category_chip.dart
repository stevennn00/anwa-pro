import 'package:flutter/material.dart';

import '../../../core/models/enums.dart';

class PhotoCategoryChip extends StatelessWidget {
  const PhotoCategoryChip({
    super.key,
    required this.category,
    required this.selected,
    required this.onSelected,
  });

  final PhotoCategory category;
  final bool selected;
  final ValueChanged<bool> onSelected;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      selected: selected,
      showCheckmark: false,
      label: Text(category.label),
      onSelected: onSelected,
    );
  }
}
