import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            margin: EdgeInsets.zero,
            child: ListTile(
              leading: const Icon(Icons.business),
              title: const Text('Company profile'),
              subtitle: const Text(
                'Logo, contact info, license, and default disclaimer',
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => context.go('/settings/company'),
            ),
          ),
          const SizedBox(height: 10),
          const Card(
            margin: EdgeInsets.zero,
            child: ListTile(
              leading: Icon(Icons.workspace_premium),
              title: Text('Pro unlock foundation'),
              subtitle: Text(
                'Prepared for future premium templates and limits. Payments are not enabled.',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
