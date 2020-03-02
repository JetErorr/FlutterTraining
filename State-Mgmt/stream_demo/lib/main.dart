import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  return runApp(StreamDemo());
}

class StreamDemo extends StatefulWidget {
  @override
  _StreamDemoState createState() => _StreamDemoState();
}

class _StreamDemoState extends State<StreamDemo> {
  int _counter = 0;
  final StreamController<int> _streamController = StreamController<int>();

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Counter:"),
              StreamBuilder(
                stream: _streamController.stream,
                builder: (BuildContext context, AsyncSnapshot snap) {
                  return Text('$_counter');
                },
              ),
              RaisedButton(
                child: Text("Increment"),
                onPressed: () {
                  _streamController.sink.add(_counter++);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
