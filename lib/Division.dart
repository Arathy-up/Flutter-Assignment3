import 'package:flutter/material.dart';
import 'package:flutter_app_assignment3/main.dart';
class Division extends StatefulWidget {
  @override
  _DivisionState createState() => _DivisionState();
}

class _DivisionState extends State<Division> {
  TextEditingController d1=TextEditingController();
  TextEditingController d2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Division Tool"),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 5.0,),
              TextField(
                controller: d1,
                decoration: InputDecoration(
                    hintText: "Enter first number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    prefixIcon: Icon(Icons.filter_1)
                ),
              ),
              SizedBox(height: 5.0,),
              TextField(
                controller: d2,
                decoration: InputDecoration(
                    hintText: "Enter Second number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    prefixIcon: Icon(Icons.filter_2)
                ),
              ),
              SizedBox(height: 10.0,),
              GestureDetector(
                onTap: (){
                  var d=int.parse(d1.text);
                  var dd=int.parse(d2.text);
                  var ddd=d/dd;
                  print(ddd);
                },
                child: Container(
                  height: 70.0,
                  width: 500.0,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.lightGreenAccent,Colors.deepPurpleAccent]),
                      borderRadius: BorderRadius.circular(50.0)
                  ),
                  child: Center(child: Text("Division")),
                ),
              ),
              SizedBox(height: 10.0,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Calculation()));
                },
                child: Container(
                  height: 70.0,
                  width: 500.0,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.lightGreenAccent,Colors.deepPurpleAccent]),
                      borderRadius: BorderRadius.circular(50.0)
                  ),
                  child: Center(child: Text("Back To Login")),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

