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
        home: HelloFlutter());
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(title: Text('Hello Flutter')),
      body: Container(
        alignment: Alignment.center,
        child: Text('Hello'),
      ),
    );
  }
}
