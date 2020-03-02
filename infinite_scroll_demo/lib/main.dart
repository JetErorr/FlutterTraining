import 'package:flutter/material.dart';

void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: InfiniteListView(),
      ),
    ),
  );
}

// class InfiniteListView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SliverList(
//       delegate: SliverChildBuilderDelegate(
//         (BuildContext context, int i) {
//           return Text('$i');
//         },
//       ),
//     );
//   }
// }

class InfiniteListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        return ListTile(
          title: Text('$i'),
        );
      },
    );
  }
}
