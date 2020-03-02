import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<NewsItem> fetchNews() async {
  final response = await http
      .get('https://hacker-news.firebaseio.com/v0/item/22222117.json');

  if (response.statusCode == 200) {
    return NewsItem.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load news');
  }
}

class NewsItem {
  final String by;
  final String title;

  NewsItem({this.by, this.title});

  factory NewsItem.fromJson(Map<String, dynamic> json) {
    return NewsItem(
      by: json['by'],
      title: json['title'],
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<NewsItem> futureNews;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: Card(
            child: FutureBuilder<NewsItem>(
              future: futureNews,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemBuilder: (context, i) {
                      return Card(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('$i'),
                            Text("Title: "+snapshot.data.title),
                            Text("By: "+snapshot.data.by),
                          ],
                        ),
                      );
                    },
                  );
                }
                return CircularProgressIndicator();
              },
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: () {
            setState(() {
              futureNews = fetchNews();
            });
          },
        ),
      ),
    );
  }
}
