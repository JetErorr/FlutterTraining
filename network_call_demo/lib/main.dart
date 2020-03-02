import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() => runApp(NetCall());

class NetCall extends StatefulWidget {
  @override
  _NetCallState createState() => _NetCallState();
}

class _NetCallState extends State<NetCall> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("API"),
            ],
          ),
        ),
      ),
    );
  }
}

class Service implements  Services {

}

class NewsItem {
  final int id;
  final String title;

  NewsItem(this.id, this.title);
  factory NewsItem.fromJson(Map<String, dynamic> json) {
    return NewsItem(json['id'] as int, json['title'] as String);
  }
}

// ListView.builder(
//           itemBuilder: (BuildContext context, int i) {
//             return ListTile(
//               contentPadding: EdgeInsets.all(2),
//               title: Center(
//                 child: Text('$i'),
//               ),
//             );
//           },
//         ),
