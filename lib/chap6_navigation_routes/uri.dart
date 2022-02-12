import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'URL',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('URL'),
            centerTitle: true,
          ),
          body: HomePage()),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _launchURLbrowser() async {
    const url = 'https://www.geeksforgeeks.org/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not lauch $url';
    }
  }

  void _lauchURLbrowserApp() async {
    const url = 'https://www.geeksforgeeks.org/';
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      throw 'Could not lauch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Divider(
            height: 30,
          ),
          TextButton(
              onPressed: _launchURLbrowser,
              child: const Text('Go to the borwser')),
          TextButton(
              onPressed: _lauchURLbrowserApp,
              child: Text('Go to the borwser in this app')),
        ],
      ),
    );
  }
}
