import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.deepOrange, centerTitle: true)),
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Transition'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to Page 2'),
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.easeOutCirc;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Text('Welcome to the home page'),
      ),
    );
  }
}
