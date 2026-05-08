import 'package:flutter/material.dart';

class PhotoMarkupScreen extends StatelessWidget {
  const PhotoMarkupScreen({
    super.key,
    required this.jobId,
    required this.photoId,
  });

  final String jobId;
  final String photoId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Markup photo')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'Photo markup is planned after signatures and change orders. The route is ready for a canvas-based editor.',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
