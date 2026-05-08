import 'package:flutter/material.dart';

import '../../../shared/widgets/app_card.dart';

class ChangeOrderCard extends StatelessWidget {
  const ChangeOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppCard(
      child: Text('Change orders will be added after the report slice.'),
    );
  }
}
