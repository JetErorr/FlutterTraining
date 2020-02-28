import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Minefield"),
        ),
        body: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                ToggleIcon(),
                ToggleIcon(),
                ToggleIcon(),
                ToggleIcon(),
              ],
            ),
            Column(
              children: <Widget>[
                ToggleIcon(),
                ToggleIcon(),
                ToggleIcon(),
                ToggleIcon(),
              ],
            ),
            Column(
              children: <Widget>[
                ToggleIcon(),
                ToggleIcon(),
                ToggleIcon(),
                ToggleIcon(),
              ],
            ),
            Column(
              children: <Widget>[
                ToggleIcon(),
                ToggleIcon(),
                ToggleIcon(),
                ToggleIcon(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ToggleIcon extends StatefulWidget {
  @override
  _ToggleIconState createState() => _ToggleIconState();
}

class _ToggleIconState extends State<ToggleIcon> {
  IconData _ac = Icons.ac_unit;
  String _acState = "On";

  _iconToggled() {
    setState(
      () {
        _ac == Icons.ac_unit ? _ac = Icons.block : _ac = Icons.ac_unit;
        _acState == "On" ? _acState = "Off" : _acState = "On";
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      onPressed: _iconToggled,
      icon: Icon(_ac),
      label: Text(_acState),
    );
  }
}
