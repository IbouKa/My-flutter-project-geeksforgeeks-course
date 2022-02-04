import 'package:flutter/material.dart';
import 'package:hello_word/chap2_widgets/appBar_widget.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Horizontal List in Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Horizontal List in Flutter"),
            centerTitle: true,
          ),
          body: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 550,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  height: 480,
                  width: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/i1.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  height: 480,
                  width: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/i2.jpg'),
                          fit: BoxFit.fill),
                      shape: BoxShape.rectangle),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  height: 480,
                  width: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/i3.jpg'),
                          fit: BoxFit.fill),
                      shape: BoxShape.rectangle),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  height: 480,
                  width: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/i4.jpg'),
                          fit: BoxFit.fill),
                      shape: BoxShape.rectangle),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  height: 480,
                  width: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/i5.jpg'),
                          fit: BoxFit.fill),
                      shape: BoxShape.rectangle),
                ),
              ],
            ),
          ),
        ));
  }
}
