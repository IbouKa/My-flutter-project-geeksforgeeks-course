/*
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
      title: 'showDialog',
      home: Scaffold(
        appBar: AppBar(
          title: Text('showDialog'),
        ),
        body: showDialog(
            context: context,
            builder: (BuildContext context) {
              return Expanded(
                  child: AlertDialog(
                actions: [
                  TextButton(
                    textColor: Colors.black,
                    onPressed: () {},
                    child: const Text('CANCEL'),
                  ),
                  TextButton(
                    textColor: Colors.black,
                    onPressed: () {},
                    child: const Text('ACCEPT'),
                  ),
                ],
              ));
            }),
      ),
    );
  }
}

*/