import 'package:flutter/material.dart';
import 'package:hello_word/chap2_widgets/container_widget.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lazy load',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lazy Load'),
          centerTitle: true,
        ),
        body: MyHome(),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<int> data = [];
  int currentLength = 0;

  final increment = 10;
  bool isLoading = false;

  @override
  void initState() {
    _loadMore();
    super.initState();
  }

  Future _loadMore() async {
    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 2));
    for (var i = currentLength; i < currentLength + increment; i++) {
      data.add(i);
    }

    setState(() {
      isLoading = false;
      currentLength = data.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LazyLoadScrollView(
      isLoading: isLoading,
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, position) {
            return DemoItem(position);
          }),
      onEndOfPage: () => _loadMore(),
    );
  }
}

class DemoItem extends StatelessWidget {
  final int position;
  const DemoItem(this.position, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.orangeAccent,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text('Items $position')
              ],
            ),
            const Text("GeeksforGeeks.org was created with a goal "
                "in mind to provide well written, well "
                "thought and well explained solutions for selected"
                " questions. The core team of five super geeks"
                " constituting of technology lovers and computer"
                " science enthusiasts have been constantly working"
                " in this direction ."),
          ],
        ),
      ),
    );
  }
}
