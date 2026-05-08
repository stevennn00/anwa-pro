import 'package:flutter/material.dart';

class PhotoTagPicker extends StatelessWidget {
  const PhotoTagPicker({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        labelText: 'Tags',
        hintText: 'attic, panel, leak',
      ),
    );
  }
}
