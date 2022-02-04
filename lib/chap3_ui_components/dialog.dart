import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hello_word/chap2_widgets/container_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialog',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          button: TextStyle(backgroundColor: Colors.black, color: Colors.white),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dialog Widget'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                AlertDialog(
                  title: Text('Alert Dialog'),
                  content: Container(
                    child: Text('Content of de widget'),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => {},
                      child: Text('ACCEPT'),
                      style: ButtonStyle(),
                    ),
                    TextButton(
                      onPressed: () => {},
                      child: Text('CANCEL'),
                    ),
                  ],
                ),
                SimpleDialog(
                  contentPadding: EdgeInsetsDirectional.all(20),
                  title: Text('Simple Dialog'),
                  backgroundColor: Colors.yellow,
                  children: [
                    SimpleDialogOption(
                      child: Text('Option 1'),
                      onPressed: () => {},
                    ),
                    SimpleDialogOption(
                      child: Text('Option 2'),
                      onPressed: () => {},
                    ),
                    SimpleDialogOption(
                      child: Text('Option 3'),
                      onPressed: () => {},
                    ),
                    SimpleDialogOption(
                      child: Text('Option 4'),
                      onPressed: () => {},
                    ),
                    SimpleDialogOption(
                      child: Text('Option 5'),
                      onPressed: () => {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
