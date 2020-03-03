import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';
import 'screenTwo.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${counter.getCounter()}'),
            Consumer<Counter>(builder: (context, counter, _) {
              return RaisedButton(
                child: Text("Goto screen 2"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen2(),
                    ),
                  );
                },
              );
            }),
            RaisedButton(
              child: Icon(Icons.add),
              onPressed: () {
                counter.increment();
              },
            ),
            RaisedButton(
              child: Icon(Icons.remove),
              onPressed: () {
                counter.decrement();
              },
            )
          ],
        ),
      ),
    );
  }
}
