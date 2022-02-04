import 'package:flutter/material.dart';
import 'package:hello_word/chap2_widgets/container_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expanded Widget',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expanded Widget'),
          centerTitle: true,
        ),
        backgroundColor: Colors.green,
        body: Center(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: TextButton(
                  child: Image.asset('assets/images/dice1.jpg'),
                  onPressed: () => {},
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  child: Image.asset('assets/images/dice1.jpg'),
                  onPressed: () => {},
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  child: Image.asset('assets/images/dice1.jpg'),
                  onPressed: () => {},
                ),
              ),
              ExpandIcon(
                size: 50,
                color: Colors.black,
                disabledColor: Colors.red,
                onPressed: (value) => {},
                isExpanded: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
