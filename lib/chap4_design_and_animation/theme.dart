import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hello_word/chap2_widgets/container_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.amber,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.amberAccent,
          ),
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: 60,
                fontFamily: 'Yellowtail',
                color: Colors.blue,
                fontWeight: FontWeight.bold),
            headline2: TextStyle(
                fontSize: 50,
                fontFamily: 'Anton',
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic),
            headline3: TextStyle(
                fontSize: 40, fontFamily: 'Anton', fontWeight: FontWeight.bold),
          )),
      title: 'Theme Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Theme Flutter'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'Theme',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
