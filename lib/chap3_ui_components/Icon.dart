import 'package:flutter/material.dart';
import 'package:hello_word/chap2_widgets/appBar_widget.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.black,
        title: 'Icon in Flutter',
        home: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 20,
              centerTitle: true,
              title: const Text('Icon in Flutter'),
              bottom: const TabBar(
                unselectedLabelColor: Colors.amber,
                indicatorColor: Colors.amberAccent,
                tabs: [
                  Icon(Icons.music_note),
                  Icon(Icons.music_video),
                  Icon(Icons.camera),
                  Icon(Icons.grade),
                  Icon(Icons.email),
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                Icon(
                  Icons.music_note,
                  size: 100,
                ),
                Icon(
                  Icons.music_video,
                  size: 100,
                ),
                Icon(
                  Icons.camera,
                  size: 100,
                  semanticLabel: 'Camera',
                ),
                Icon(
                  Icons.grade,
                  size: 200,
                  semanticLabel: 'Star',
                  color: Colors.deepOrange,
                ),
                Icon(
                  Icons.email,
                  size: 300,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ));
  }
}
