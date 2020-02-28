import 'package:flutter/material.dart';

//MARK: Hot reloading will reset all counters to 0,
//MARK: because all the values are local to GlobStore

void main() {
  runApp(StateDemo());
}

class StateDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GlobStore(child: TenLayerDeep()),
              GlobStore(child: TenLayerDeep()),
              GlobStore(child: TenLayerDeep()),
            ],
          ),
        ),
      ),
    );
  }
}

class GlobStore extends InheritedWidget {
  final Widget child;
  final globIdx = {'counter': 0};

  //MARK: Constructor to set Child property
  GlobStore({this.child}) : super(child: child);

  //MARK: Required method
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  // MARK: Of method
  static GlobStore of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GlobStore>();
  }
}

class TenLayerDeep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setCustomState) {
      var idx = GlobStore.of(context).globIdx['counter'];
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('$idx'),
          RaisedButton(
            onPressed: () {
              // MARK: Anonymous function setCustomState()
              setCustomState(
                () {
                GlobStore.of(context).globIdx['counter']++;
              }
              );
            },
            child: Text("Increment Count"),
          ),
        ],
      );
    });
  }
}
