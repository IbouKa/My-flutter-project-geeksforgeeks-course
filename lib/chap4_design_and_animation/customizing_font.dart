import 'package:flutter/material.dart';
import 'package:hello_word/chap2_widgets/container_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Customizing Font',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customizing Font'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
            child: ListView(
          children: const [
            Text(
              'Font Family Anton',
              style: TextStyle(
                  fontFamily: 'Anton', color: Colors.green, fontSize: 40),
            ),
            Text(
              'Font Family Monoton',
              style: TextStyle(
                  fontFamily: 'Monoton', color: Colors.green, fontSize: 40),
            ),
            Text(
              'Font Family Yellowtail',
              style: TextStyle(
                  fontFamily: 'Yellowtail', color: Colors.green, fontSize: 40),
            ),
            Text(
              'Step 1: Open Google Fonts and search for a font family in the search and download, click the Download Family button',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            Text(
              'Step 2: Create a directory as “fonts“.',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            Text(
              'Step 3: Open file manager and go to downloads and Extract to the fonts.',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            Text(
              'Step 3: Add the flutter: fonts: in pubspec.yaml the fontfamily',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ],
        )),
      ),
    );
  }
}
