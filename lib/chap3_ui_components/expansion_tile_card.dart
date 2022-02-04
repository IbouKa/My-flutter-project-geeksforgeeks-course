import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:hello_word/chap2_widgets/container_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Expansion Title Card',
        home: MyHomePage(title: 'Expansion Title Card'));
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.blueGrey),
            padding: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ExpansionTileCard(
                key: cardB,
                duration: const Duration(milliseconds: 100),
                leading: const CircleAvatar(
                  child: Text('A'),
                ),
                title: const Text('Tap to the card'),
                subtitle: const Text('Its have a ZIF logo'),
                children: [
                  const Divider(
                    thickness: 5,
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Image.asset('assets/images/i1.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.blueGrey),
            padding: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ExpansionTileCard(
                baseColor: Colors.orange,
                expandedColor: Colors.red,
                expandedTextColor: Colors.green,
                heightFactorCurve: Curves.linearToEaseOut,
                key: cardA,
                duration: const Duration(milliseconds: 100),
                leading: const CircleAvatar(
                  child: Text('A'),
                ),
                title: const Text('Tap to the card'),
                subtitle: const Text('Its have a ZIF logo'),
                children: [
                  const Divider(
                    thickness: 5,
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Image.asset('assets/images/i1.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
