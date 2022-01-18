import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Widget',
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrange,
        title: Text('Widget Scaffold'),
      ),
      body: Center(
        child: Text(
          'Welcome to the body of the scafforld widget, I am Ibou Ka and i am a begginer in flutter dev',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 1,
        child: Icon(Icons.style),
        backgroundColor: Colors.deepOrangeAccent,
        hoverColor: Colors.black,
        focusColor: Colors.pink,
        onPressed: () => {},
      ),
      drawer: Drawer(
        backgroundColor: Colors.amber.shade50,
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              child: Icon(
                Icons.money_sharp,
                color: Colors.red,
              ),
              decoration: BoxDecoration(color: Colors.black),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text(
                'Mes Tontines',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person_off_outlined),
              title: Text(
                'Mon profil',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text(
                'Help',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
            ListTile(
              tileColor: Colors.deepOrange,
              title: Text('A propos'),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black87,
        currentIndex: 0,
        fixedColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.deepOrange,
            title: Text(''),
            icon: const Icon(
              Icons.home,
              color: Colors.deepOrange,
              size: 40,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(
              Icons.search,
              color: Colors.deepOrange,
              size: 40,
            ),
          ),
          const BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(
              Icons.account_circle_rounded,
              color: Colors.deepOrange,
              size: 40,
            ),
          )
        ],
        onTap: (int indexOfItem) => {},
      ),
      drawerScrimColor: Colors.deepOrange,
    );
  }
}
