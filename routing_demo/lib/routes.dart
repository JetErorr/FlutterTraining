import 'package:flutter/material.dart';
import 'screenOne.dart';
import 'screenTwo.dart';
import 'screenThree.dart';
import 'screenFour.dart';

class RouteDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
        '/screen4': (context) => Screen4(),
      },
    );
  }
}