import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<Counter>(
              builder: (consumer, context, _) {
                return Text('${counter.getCounter()}');
              },
            ),
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
            ),
          ],
        ),
      ),
    );
  }
}
