import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';
import 'screenOne.dart';

void main() => runApp(ProviderDemo());

class ProviderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<Counter>(
        create: (_) => Counter(0),
        child: MaterialApp(
          home: Screen1(),
        ),
      ),
    );
  }
}
