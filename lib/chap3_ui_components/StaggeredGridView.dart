import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<StaggeredGridTile> _listTile = <StaggeredGridTile>[
  const StaggeredGridTile.count(
    crossAxisCellCount: 8,
    mainAxisCellCount: 2,
    child: BackGroundTile(
      backgroundColor: Colors.black,
      icondata: IconData(
        072,
      ),
    ),
  ),
  const StaggeredGridTile.count(
    crossAxisCellCount: 8,
    mainAxisCellCount: 2,
    child: BackGroundTile(
      backgroundColor: Colors.white,
      icondata: IconData(
        072,
      ),
    ),
  ),
  const StaggeredGridTile.count(
    crossAxisCellCount: 4,
    mainAxisCellCount: 2,
    child: BackGroundTile(
      backgroundColor: Colors.green,
      icondata: IconData(
        073,
      ),
    ),
  ),
  const StaggeredGridTile.count(
    crossAxisCellCount: 4,
    mainAxisCellCount: 2,
    child: BackGroundTile(
      backgroundColor: Colors.green,
      icondata: IconData(
        073,
      ),
    ),
  ),
  const StaggeredGridTile.count(
    crossAxisCellCount: 4,
    mainAxisCellCount: 2,
    child: BackGroundTile(
      backgroundColor: Colors.green,
      icondata: IconData(
        073,
      ),
    ),
  ),
  const StaggeredGridTile.count(
    crossAxisCellCount: 4,
    mainAxisCellCount: 2,
    child: BackGroundTile(
      backgroundColor: Colors.brown,
      icondata: IconData(
        072,
      ),
    ),
  )
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Staggered Grid View',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staggered Grid View'),
        centerTitle: true,
      ),
      body: Container(
        // Staggered Grid View starts here
        child: StaggeredGrid.count(
          crossAxisCount: 8, //NB colonne
          children: _listTile,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
      ),
    );
  }
}

class BackGroundTile extends StatelessWidget {
  final Color backgroundColor;
  final IconData icondata;
  const BackGroundTile({required this.backgroundColor, required this.icondata});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Icon(
        icondata,
        color: Colors.white,
      ),
    );
  }
}
