import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String tap = 'Bonjour';
  void tapOne(String x) {
    setState(() {
      tap = x;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar Widget',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Widget'),
          backgroundColor: Colors.deepPurple,
          titleSpacing: 0.0,
          centerTitle: true,
          toolbarHeight: 50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(180),
            side: const BorderSide(width: 2, color: Colors.yellow),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications),
              tooltip: 'Notification',
              onPressed: () => {tapOne('Notification')},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Parametre',
              onPressed: () => {tapOne('Parametre')},
            ),
            IconButton(
              padding: const EdgeInsets.only(right: 20),
              icon: const Icon(Icons.share),
              tooltip: 'Partage',
              onPressed: () => {tapOne('Partage')},
            ),
          ],
          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () => {tapOne('Menu')},
          ),
        ),
        body: Center(
          child: Text(
            tap,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
