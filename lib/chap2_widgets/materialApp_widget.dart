import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'MaterialApp Widget',
    home: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('MaterialApp Widget'),
        ),
      ),
      body: Container(),
    ),
    debugShowCheckedModeBanner: true,
    showSemanticsDebugger: false,
    debugShowMaterialGrid: false,
    darkTheme: ThemeData.dark(),
    themeMode: ThemeMode.dark,
    theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: const VisualDensity(horizontal: 0.8, vertical: 1)),
  ));
}
