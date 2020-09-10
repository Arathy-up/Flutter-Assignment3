import 'package:flutter/material.dart';
import 'package:flutter_app_assignment3/Calculator.dart';



void main()=>runApp(Calculation());
class Calculation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Calculator")),
        ),
        backgroundColor: Colors.white70,
        body:  Calculator()
      ),
    );
  }
}
