import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StateMgr());
  }
}

class StateMgr extends StatefulWidget {
  @override
  _StateMgrState createState() => _StateMgrState();
}

class _StateMgrState extends State<StateMgr> {
  var idx = 0;

  final List<String> sampleString = [
    "Hola!",
    "Hello!",
    "Hi!",
    "Hello?",
    "Hey!",
    "Yo!",
    "Anyone home?"
  ];

  _randomize() {
    setState(() {
      idx = Random().nextInt(sampleString.length);
    });
  }

  _addToSample(String string) {
    setState(() {
      sampleString.add(string);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Demo1"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              sampleString[idx].toString(),
              style: Theme.of(context).textTheme.display1,
            ),
            Text("Type in a string and hit enter to add it to the data"),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: TextField(
                onSubmitted: (String value) {
                  _addToSample(value);
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (_randomize),
          tooltip: 'Increment',
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
