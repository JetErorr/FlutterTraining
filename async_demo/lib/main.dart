import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(TimeFall());

class TimeFall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SliderModule(),
        ],
      ),
    )));
  }
}

class SliderModule extends StatefulWidget {
  @override
  _SliderModuleState createState() => _SliderModuleState();
}

class _SliderModuleState extends State<SliderModule> {
  double _slideVal = 1.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('$_slideVal'),
        Slider(
          value: _slideVal,
          onChanged: (doub) {
            setState(() {
              _slideVal = doub;
            });
          },
        ),
        RaisedButton(onPressed: () {})
      ],
    );
  }
}
