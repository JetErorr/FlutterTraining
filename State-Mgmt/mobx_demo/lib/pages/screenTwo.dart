import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_demo/store/counter/counter.dart';

class Screen2 extends StatelessWidget {
  
  Counter counter;

  Screen2(count) {
    counter = count;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(
              builder: (context) => Text(
                'Counter: ${counter.count}',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Icon(Icons.remove),
                  color: Colors.redAccent,
                  onPressed: () {
                    counter.decrement();
                  },
                ),
                SizedBox(width: 10),
                RaisedButton(
                  child: Icon(Icons.add),
                  color: Colors.green,
                  onPressed: () {
                    counter.increment();
                  },
                ),
              ],
            ),
            RaisedButton(
              child: Icon(Icons.undo),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
