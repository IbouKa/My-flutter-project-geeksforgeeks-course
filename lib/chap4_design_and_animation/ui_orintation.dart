import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI orientation',
      home: Scaffold(
        appBar: AppBar(
          title: Text('UI orientation'),
        ),
        body: OrientationBuilder(builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 3 : 6,
            children: List.generate(100, (index) {
              return Center(
                child: Text("A $index"),
              );
            }),
          );
        }),
      ),
    );
  }
}
