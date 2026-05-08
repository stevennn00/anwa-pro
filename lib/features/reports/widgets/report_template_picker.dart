import 'package:flutter/material.dart';

import '../../../core/models/enums.dart';

class ReportTemplatePicker extends StatelessWidget {
  const ReportTemplatePicker({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final ReportTemplate value;
  final ValueChanged<ReportTemplate> onChanged;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<ReportTemplate>(
      segments: ReportTemplate.values
          .map(
            (template) =>
                ButtonSegment(value: template, label: Text(template.label)),
          )
          .toList(),
      selected: {value},
      onSelectionChanged: (selection) => onChanged(selection.first),
    );
  }
}
