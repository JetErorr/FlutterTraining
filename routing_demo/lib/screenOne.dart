import 'package:flutter/material.dart';
import 'package:routing_demo/screenFour.dart';
import 'screenBottomSheet.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  var itemCount;
  int qty;

  _showBottomSheet() {
    // qty = await showModalBottomSheet(
    //   context: context,
    //   builder: (BuildContext context) {
    //     return ScreenBottomSheet();
    //   },
    // );
    setState(() async {
      qty = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return ScreenBottomSheet();
        },
      );
      print(qty);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uno"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Two Dimes',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          'Tin Man',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.monetization_on,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: Text("Title1"),
              subtitle: Text("Subtitle1"),
              selected: true,
              leading: Icon(Icons.album),
              trailing: Switch.adaptive(
                activeColor: Colors.redAccent,
                value: true,
                onChanged: (bool) {},
              ),
            ),
            ListTile(
              title: Text("<= Leading elements"),
              subtitle: Text("Eg. Icon"),
              selected: true,
              leading: Icon(Icons.add_alarm),
              trailing: Switch(
                activeColor: Colors.green,
                inactiveThumbColor: Colors.amber,
                inactiveTrackColor: Colors.black,
                value: true,
                onChanged: (bool) {},
              ),
            ),
            ListTile(
              title: Text("Trailing Elements  =>"),
              subtitle: Text("Eg. Switch"),
              leading: Icon(Icons.alarm_on),
              selected: true,
              trailing: Switch.adaptive(
                activeColor: Colors.blueAccent,
                value: false,
                onChanged: (bool) {},
              ),
            ),
            RaisedButton(
              child: Text("Pop out!"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            RaisedButton(
              child: Text("Goto Screen 2"),
              onPressed: () {
                Navigator.pushNamed(context, '/screen2');
              },
            ),
            RaisedButton(
              child: Text("Close drawer and goto screen 3"),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/screen3');
              },
            ),
            RaisedButton(
              child: Text("Goto screen 4"),
              onPressed: () {
                Navigator.pushNamed(context, '/screen4');
              },
            ),
            RaisedButton(
              child: Text("Goto screen 4, routed on the fly"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen4(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Upgrade to Purple"),
              onPressed: (() {
                Navigator.pushNamed(context, '/screen2');
              }),
            ),
            RaisedButton(
              child: Text("Upgrade to Green"),
              onPressed: (() {
                Navigator.pushNamed(context, '/screen3');
              }),
            ),
            RaisedButton(
              child: Text("Upgrade to Orange"),
              onPressed: (() {
                Navigator.pushNamed(context, '/screen4');
              }),
            ),
            RaisedButton(
              child: Text(qty ?? "Jelly"),
              // child: Text("Bottom Sheet"),
              onPressed: () => _showBottomSheet(),
              // onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
