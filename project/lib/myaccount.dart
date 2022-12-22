import 'package:flutter/material.dart';

class Myaccount extends StatefulWidget {
  const Myaccount({super.key});

  @override
  State<Myaccount> createState() => _MyaccountState();
}

class _MyaccountState extends State<Myaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My account info'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          'Here will get all account imfo',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
