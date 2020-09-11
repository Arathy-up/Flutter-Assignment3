import 'package:flutter/material.dart';
import 'package:flutter_app_assignment3/Addition.dart';
import 'package:flutter_app_assignment3/Division.dart';
import 'package:flutter_app_assignment3/Multiplication.dart';
import 'package:flutter_app_assignment3/Subtraction.dart';

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.lightGreenAccent,Colors.deepOrangeAccent])
        ),
        padding: EdgeInsets.all(10.0),
        child: Column(
          children:<Widget> [
            Center(
              child: RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Addition()));
              },
              child: Text("Add",style: TextStyle(
                color: Colors.deepPurple
              ),)),
            ),
            SizedBox(height: 5.0),
            Center(
              child: RaisedButton(onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Subtraction()));
              },
              child:Text("Sub",style: TextStyle(
                color: Colors.deepPurple
              ),)),
            ),
            SizedBox(height: 5.0),
            Center(
              child: RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Multiplication()));
              },
              child: Text("Mul",style: TextStyle(
                color: Colors.deepPurple
              ),)),
            ),
            SizedBox(height: 5.0),
            Center(
              child: RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Division()));
              },
              child:Text("Div",style: TextStyle(
                color: Colors.deepPurple
              ),)),
            ),
          ],
        ),
      ),
    );
  }
}
