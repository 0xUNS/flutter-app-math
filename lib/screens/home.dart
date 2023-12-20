import 'package:flutter/material.dart';
import 'package:flutter_app_dl/screens/drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blue,
      ),
      drawer: mydrawer(),
      body: Column(
        children: [
          Center(
            child: Text(
              "Emsi",
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Roboto', // Using the Roboto font family
              ),
            ),
          ),
          Center(child: Image.asset('assets/prof.png'))
        ],
      ),
    );
  }
}
