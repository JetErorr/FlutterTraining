import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() => _counter = 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DefaultTabController(
                length: 3,
                initialIndex: 2,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.blue,
                  tabs: [
                    Tab(icon: Icon(Icons.directions_car), text: "Tab1"),
                    Tab(icon: Icon(Icons.directions_bike),),
                    Tab(icon: Icon(Icons.directions_bus), text: "Tab3"),
                  ],
                ),
              ),
              Table(
                border: TableBorder.all(color: Colors.blue),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: List.generate(1, (int index) {
                  return TableRow(children: [
                    Text("Column 1"),
                    Text("Column 2"),
                    TableCell(
                      child: Text(
                        "Column 3",
                      ),
                    ),
                    Text("Column 4"),
                    Text("Column 5"),
                  ]);
                }),
              ),
              Container(
                child: Image.asset('assets/img2.png'),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    onPressed: _decrementCounter,
                    color: Colors.red,
                    child: Text(
                      "Decrement",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  RaisedButton(
                    onPressed: _incrementCounter,
                    color: Colors.green,
                    child: Text(
                      "Increment",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _resetCounter,
        backgroundColor: Colors.black87,
        tooltip: 'Reset Counter',
        child: new Icon(Icons.refresh),
      ),
    );
  }
}
