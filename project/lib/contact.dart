import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact info'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          'Can see all contact list here',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
