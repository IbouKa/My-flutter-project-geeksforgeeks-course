import 'package:flutter/cupertino.dart';
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
      title: 'Route an Navigation',
      home: FirstRoute(),
    );
  }
}

//First Route
class FirstRoute extends StatefulWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstRoute'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          child: Icon(Icons.ac_unit_sharp),
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            )
          },
        ),
      ),
    );
  }
}

//Seconde route
class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondeRoute'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          child: Icon(Icons.ac_unit_sharp),
          onPressed: () => {},
        ),
      ),
    );
  }
}
