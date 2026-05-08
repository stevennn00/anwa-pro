import 'package:flutter/material.dart';

class ChangeOrderDetailScreen extends StatelessWidget {
  const ChangeOrderDetailScreen({
    super.key,
    required this.jobId,
    required this.changeOrderId,
  });

  final String jobId;
  final String changeOrderId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Change order')),
      body: Center(child: Text('Change order detail: $changeOrderId')),
    );
  }
}
