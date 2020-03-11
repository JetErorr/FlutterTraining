import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(FireDemo());

class FireDemo extends StatefulWidget {
  @override
  _FireDemoState createState() => _FireDemoState();
}

class _FireDemoState extends State<FireDemo> {
  Future<ParseNews> _futureNews;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FutureBuilder(
            future: _futureNews,
            builder: (context, snap) {
              return Column(
                children: <Widget>[
                  Text("Title: " + snap.data.title),
                ],
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: () {
            setState(() {
              _futureNews = fetchNews();
            });
          },
        ),
      ),
    );
  }
}

Future<ParseNews> fetchNews() async {
  final response = await http.get('https://hacker-news.firebaseio.com/v0/item/22222117.json');


  if (response.statusCode == 200) {
    return ParseNews.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load news');
  }
}

// MARK: Serializer and model creator 
class ParseNews {
  final String title;

  ParseNews({this.title});

  factory ParseNews.fromJson(Map<String, dynamic> json) {
    return ParseNews(
      title: json['title'],
    );
  }
}
