import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        brightness: Brightness.light,
        accentColor: Colors.blueAccent,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myText = "Hello World!";

  void _changeText() {
    setState(() {
      if (myText.startsWith("H")) {
        myText = "Welcome to my app!";
      } else {
        myText = "Hello World!";
      }
    });
  }

  Widget _bodyWidget() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              myText,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            // RaisedButton(
            //   child: Text(
            //     "Click",
            //     style: TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            //   onPressed: _changeText,
            //   color: Colors.red,
            // )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: _bodyWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: _changeText,
      ),
    );
  }
}
