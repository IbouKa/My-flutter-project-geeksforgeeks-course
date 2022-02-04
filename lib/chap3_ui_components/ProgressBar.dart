import 'package:flutter/material.dart';
import 'package:hello_word/chap3_ui_components/expansion_tile_card.dart';

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
              title: const Text('Progress Indicator'), centerTitle: true),
          body: Container(
              padding: EdgeInsetsDirectional.all(100),
              child: Center(
                child: Column(
                  children: const [
                    CircularProgressIndicator(
                      backgroundColor: Colors.yellow,
                      color: Colors.green,
                      value: 0.5,
                      strokeWidth: 10,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    LinearProgressIndicator(
                      color: Colors.white60,
                      backgroundColor: Colors.yellow,
                      valueColor: AlwaysStoppedAnimation(Colors.green),
                      value: 0.3,
                      minHeight: 10,
                      semanticsLabel: 'Progress',
                    )
                  ],
                ),
              )),
        ));
  }
}
