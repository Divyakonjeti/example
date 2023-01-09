import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help info'),
        backgroundColor: Colors.lightGreen,
      ),
      body: const Center(
        child: Text(
          'How can i help you',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
