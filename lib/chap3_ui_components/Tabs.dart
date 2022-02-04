import 'package:flutter/material.dart';
import 'package:hello_word/chap2_widgets/appBar_widget.dart';

void main() {
  runApp(const HomePage());
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
        debugShowCheckedModeBanner: false,
        title: 'Tabs in Flutter',
        home: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Tabs in Flutter'),
              centerTitle: true,
              bottom: TabBar(
                tabs: [
                  IconButton(
                      onPressed: () => {}, icon: const Icon(Icons.music_note)),
                  IconButton(
                      onPressed: () => {}, icon: const Icon(Icons.music_video)),
                  IconButton(
                      onPressed: () => {}, icon: const Icon(Icons.camera)),
                  IconButton(
                      onPressed: () => {}, icon: const Icon(Icons.email)),
                  IconButton(
                      onPressed: () => {},
                      icon: const Icon(Icons.notifications)),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                ListView(
                  children: const [
                    Text("Music"),
                    Icon(Icons.music_note),
                  ],
                ),
                const Icon(Icons.music_video),
                const Icon(Icons.camera),
                const Icon(Icons.email),
                const Icon(Icons.notifications),
              ],
            ),
          ),
        ));
  }
}
