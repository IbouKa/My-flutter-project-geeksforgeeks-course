import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Progress Bar',
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.black,
                title: const Text('Progress Indicator'),
                centerTitle: true),
            body: Container()));
  }
}
