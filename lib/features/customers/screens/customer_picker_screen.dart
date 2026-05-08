import 'package:flutter/material.dart';

class CustomerPickerScreen extends StatelessWidget {
  const CustomerPickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Customers')),
      body: const Center(
        child: Text(
          'Customer reuse is handled in the job form for this slice.',
        ),
      ),
    );
  }
}
