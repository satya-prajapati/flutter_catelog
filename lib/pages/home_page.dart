import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var days  = 30;
    String name = "Hello";

    return Scaffold(


      appBar: AppBar(
        title: Text("Welcome to $days of flutters $name"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
