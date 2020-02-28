import 'package:flutter/material.dart';

class ScreenBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("Hello"),
          onPressed: () => Navigator.of(context).pop(234),
        ),
      ],
    );
  }
}
