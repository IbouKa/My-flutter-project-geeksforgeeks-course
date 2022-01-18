import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: soir());
  }
}

class soir extends StatefulWidget {
  const soir({Key? key}) : super(key: key);

  @override
  _soirState createState() => _soirState();
}

class _soirState extends State<soir> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  var titre = "My FIRST APP TITLE";
  var title1 = 'Beginning Courses';
  var title2 = 'Professional Courses';

  void onPressed1() {
    setState(() {
      title1 = 'Welcome to Beginning Courses';
    });
  }

  void onPressed2() {
    setState(() {
      title2 = 'Welcome to The Professional Courses';
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(titre),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
              child: Text(
                title1,
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
              onPressed: () => onPressed1(),
            ),
            Divider(),
            Text('HELLO'),
            RaisedButton(
              child: Text(
                title2,
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              onPressed: () => onPressed2(),
            ),
          ],
        ));
  }
}
