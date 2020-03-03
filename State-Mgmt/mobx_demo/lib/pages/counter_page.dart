import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_demo/store/counter/counter.dart';
import 'screenTwo.dart';

class CounterPage extends StatelessWidget {
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MobX"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Observer(
            builder: (_) {
              return Text(
                'Counter: ${counter.count}',
                style: TextStyle(fontSize: 24.0),
              );
            },
          ),
          Observer(
            builder: (_) {
              return Text(
                'Square: ${counter.count2}',
                style: TextStyle(fontSize: 24.0),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                color: Colors.redAccent,
                child: Icon(Icons.remove),
                onPressed: () {
                  counter.decrement();
                },
              ),
              SizedBox(width: 10),
              MaterialButton(
                color: Colors.green,
                child: Icon(Icons.add),
                onPressed: () {
                  counter.increment();
                },
              ),
            ],
          ),
          RaisedButton(
            child: Icon(Icons.redo),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen2(counter),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
