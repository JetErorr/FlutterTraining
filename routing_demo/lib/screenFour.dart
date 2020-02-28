import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QuadFeed"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Go back!"),
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }
}
