import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:project/contact.dart';
import 'package:project/help.dart';

import 'about.dart';

// ignore: camel_case_types
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

// ignore: camel_case_types
class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Information'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: ButtonBar(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const About(),
                            ),
                          );
                        },
                        child: const Text('About'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Contact()));
                          // ignore: unused_label
                          style:
                          const TextStyle(fontSize: 32.0, color: Colors.red);
                        },
                        child: const Text('Contact'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Help()));
                        },
                        child: const Text('Help'),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
