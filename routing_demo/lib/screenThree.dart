import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ThreeCardMonte"),
        backgroundColor: Colors.green,
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
