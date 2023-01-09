// ignore: duplicate_ignore
// ignore: unused_import
// ignore_for_file: must_be_immutable, unused_import, prefer_typing_uninitialized_variables

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:project/about.dart';
import 'package:project/contact.dart';
import 'package:project/help.dart';
import 'package:project/myaccount.dart';
import 'package:project/second.dart';
import 'package:project/settings.dart';
import 'package:project/word.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var label;

  MyApp({Key? key}) : super(key: key);
  //static const appTitle = 'AWORDADAY';
  get icon => null;
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;
  final screens = [
    const Word(),
    const Myaccount(),
    const Settings(),
  ];

  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A WORD A DAY'),
        backgroundColor: Colors.orange,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
                child: Text('Information', style: TextStyle(fontSize: 30))),
            ListTile(
              leading: const Icon(Icons.account_box),
              title: const Text('About', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const About(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_page_outlined),
              title: const Text('Contact', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Contact(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Help(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      // leading: IconButton(
      //   icon: const Icon(Icons.menu),
      //   iconSize: 30,
      //   onPressed: () {
      //     Navigator.push(context,
      //         MaterialPageRoute(builder: (context) => const secondPage()));
      //   },
      // ),
      //),
      //body:IndexedStack(
      //index: currentIndex,
      //children: screens,
      //),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.orange,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white70,
        iconSize: 40,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.wordpress),
            label: 'Word',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Myaccount',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.yellow,
          ),
        ],
      ),
      body: screens.elementAt(currentIndex),
      //body: screens[currentIndex],
      //const Center(
      //child: Text('word'),
    );
  }
}

//int? currentIndex = 0;
//final screens = [
  //const Myaccount(),
  //const Word(),
  //const Settings(),
//];
