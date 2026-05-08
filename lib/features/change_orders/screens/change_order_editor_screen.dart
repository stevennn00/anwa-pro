import 'package:flutter/material.dart';

class ChangeOrderEditorScreen extends StatelessWidget {
  const ChangeOrderEditorScreen({super.key, required this.jobId});

  final String jobId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Change order')),
      body: const Center(
        child: Text('Change order editor is planned after signatures.'),
      ),
    );
  }
}
