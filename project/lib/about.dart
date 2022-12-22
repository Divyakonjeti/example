import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});
  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About information'),
        backgroundColor: Colors.lightGreen,
      ),
      body: const Center(
        child: Text(
          'About a word',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
