import 'package:flutter/material.dart';
import 'package:hello_word/chap2_widgets/appBar_widget.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'RichText Widget',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('RichText Widget'),
            centerTitle: true,
          ),
          body: Center(
            child: RichText(
                text: const TextSpan(
              text: 'Hello, ',
              children: <TextSpan>[
                TextSpan(
                    text: 'this ',
                    style: TextStyle(color: Colors.black, fontSize: 30)),
                TextSpan(
                    text: 'text ',
                    style: TextStyle(color: Colors.blue, fontSize: 24)),
                TextSpan(
                    text: 'is ',
                    style: TextStyle(color: Colors.deepOrange, fontSize: 24)),
                TextSpan(
                    text: 'very ',
                    style: TextStyle(color: Colors.green, fontSize: 24)),
                TextSpan(
                    text: 'Rich',
                    style: TextStyle(color: Colors.yellow, fontSize: 24)),
              ],
            )),
          ),
        ));
  }
}
