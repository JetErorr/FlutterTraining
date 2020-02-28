import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TwinTurbo"),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Text("Rolling Down the River"),
          ],
        ),
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