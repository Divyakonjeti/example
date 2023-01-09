import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My settings info'),
        backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
        child: Text(
          'Setting changes saved',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
