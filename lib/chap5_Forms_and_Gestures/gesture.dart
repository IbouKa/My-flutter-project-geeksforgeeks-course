import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gesture',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gesture'),
          centerTitle: true,
        ),
        body: Center(
          child: MyGesture(),
        ),
      ),
    );
  }
}

class MyGesture extends StatefulWidget {
  const MyGesture({Key? key}) : super(key: key);

  @override
  _MyGestureState createState() => _MyGestureState();
}

class _MyGestureState extends State<MyGesture> {
  bool snbar = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final sn = SnackBar(content: Text('SnackBar'));
        snbar ? snbar = !snbar : snbar = !snbar;
        snbar
            ? Scaffold.of(context).showSnackBar(sn)
            : Scaffold.of(context).hideCurrentSnackBar();
      }, // The tap button
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text('Tap Button'),
      ),
    );
  }
}
