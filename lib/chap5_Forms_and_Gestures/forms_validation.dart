import 'package:flutter/material.dart';
import 'package:hello_word/chap2_widgets/container_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Validation',
      theme: ThemeData(brightness: Brightness.dark),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  var _isLoading = false;
  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation'),
        leading: Icon(Icons.ac_unit),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                const Text(
                  "Remplir les informations personnelles",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                TextFormField(
                  style: TextStyle(
                      fontSize: 24,
                      letterSpacing: 10,
                      fontFamily: "Yellowtail"),
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    icon: Icon(
                      Icons.email,
                      color: Colors.deepOrangeAccent,
                      size: 35,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {},
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                ),
                //box styling
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                //text input
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {},
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid password!';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Date'),
                  keyboardType: TextInputType.datetime,
                ),
                TextFormField(
                  keyboardType: TextInputType.numberWithOptions(),
                ),
                RaisedButton(
                  color: Colors.deepOrangeAccent,
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 15.0,
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  onPressed: () => _submit(),
                )
              ],
            )),
      ),
    );
  }
}
