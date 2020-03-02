import 'package:flutter/material.dart';

void main() => runApp(PersonCard());

class PersonCard extends StatelessWidget {
  final counter = {0:0};
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                        child: Text("--"),
                        onPressed: () {
                          setState(() {
                            counter[0]--;
                          });
                        },
                      ),
                      Text('${counter[0]}'),
                      RaisedButton(
                        child: Text("++"),
                        onPressed: () {
                          setState(() {
                            counter[0]++;
                          });
                        },
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
