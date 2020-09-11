import 'package:flutter/material.dart';
import 'package:flutter_app_assignment3/main.dart';
class Multiplication extends StatefulWidget {
  @override
  _MultiplicationState createState() => _MultiplicationState();
}

class _MultiplicationState extends State<Multiplication> {
  String r="0";
  TextEditingController m1=TextEditingController();
  TextEditingController m2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Multiplication Tool"),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 5.0,),
              TextField(
                style: TextStyle(
                    color: Colors.indigo
                ),
                controller: m1,
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
                style: TextStyle(
                    color: Colors.indigo
                ),
                controller: m2,
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
                  var m=int.parse(m1.text);
                  var mm=int.parse(m2.text);
                  var mmm=m*mm;
                  setState(() {
                    r=mmm.toString();
                  });
                },
                child: Container(
                  height: 60.0,
                  width: 500.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.deepOrangeAccent,Colors.deepPurpleAccent]),
                    borderRadius: BorderRadius.circular(50.0)
                  ),
                  child: Center(child: Text("Multiplication")),
                ),
              ),
              SizedBox(height: 10.0,),
              Text(r,style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 35.0),),
              SizedBox(height: 10.0,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Calculation()));
                },
                child: Container(
                  height: 60.0,
                  width: 500.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.deepOrangeAccent,Colors.deepPurpleAccent]),
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
