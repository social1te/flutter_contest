import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Настройки'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.key),
              title: Text('Какой-то параметр'),
              subtitle: Text('Отключен'),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('Какой-то параметр'),
              subtitle: Text('Включен'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Какой-то параметр'),
              subtitle: Text('Включен'),
            )
          ],
        ),
      ),
    );
  }
}

