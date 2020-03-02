import 'package:flutter/material.dart';

void main() => runApp(Squared());

class Squared extends StatelessWidget {
  var least = List.generate(100, (i) => i * i);

  @override
  Widget build(BuildContext context) {
    print(least);
    return MaterialApp(
      home: Scaffold(
          body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(100, (index) {
          return Center(
            child: Text('Item ${least[index]}'),
          );
        }),
      )),
    );
  }
}
