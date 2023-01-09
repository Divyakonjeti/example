import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Word extends StatefulWidget {
  const Word({super.key});

  @override
  State<Word> createState() => _WordState();
}

class _WordState extends State<Word> {
  List w = [];
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    setState(() {
      w = data["w"];
      // ignore: avoid_print
      //print("..todays word ${w.length}");
    });
  }

  DateTime now = DateTime.now();

//initializeDateFormatting('en-IN', '')
  //.then((_) => print(DateFormat.yMd('en-IN').format(now)));
  //String formattedDate = Date.y MMMEd().format(now);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My wordlist'),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: [
            w.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      itemCount: w.length,
                      itemBuilder: ((context, index) {
                        return Card(
                          key: ValueKey(w[index]["id"]),
                          margin: const EdgeInsets.all(20),
                          color: Colors.amber,
                          child: ListTile(
                            leading: Text(w[index]["id"]),
                            title: Text(w[index]["word"]),
                            subtitle: Text(w[index]["meaning"]),
                            trailing: Text(w[index]["sentence"]),
                          ),
                        );
                      }),
                    ),
                  )
                : ElevatedButton(
                    onPressed: (() {
                      readJson();
                    }),
                    child: const Center(
                      child: Text('Load Json'),
                    ),
                  )
          ],
        ));
  }
}
