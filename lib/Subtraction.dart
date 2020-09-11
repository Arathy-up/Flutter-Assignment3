import 'package:flutter/material.dart';
import 'package:flutter_app_assignment3/main.dart';
class Subtraction extends StatefulWidget {
  @override
  _SubtractionState createState() => _SubtractionState();
}

class _SubtractionState extends State<Subtraction> {
  String res="0";
  TextEditingController s1=TextEditingController();
  TextEditingController s2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Subtraction Tool"),
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
                controller: s1,
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
                controller: s2,
                decoration: InputDecoration(
                  hintText: "Enter second number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)
                  ),
                  prefixIcon: Icon(Icons.filter_2)
                ),
              ),
              SizedBox(height: 10.0,),
              GestureDetector(
                onTap: (){
                  var s=int.parse(s1.text);
                  var ss=int.parse(s2.text);
                  var sss=s-ss;
                  setState(() {
                    res=sss.toString();
                  });
                },
                child: Container(
                  height: 60.0,
                  width: 500.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.deepOrangeAccent,Colors.lightGreen]),
                    borderRadius: BorderRadius.circular(50.0)
                  ),
                  child: Center(child: Text("Subtraction")),
                ),
              ),
              SizedBox(height: 10.0,),
              Text(res,style: TextStyle(
                fontSize: 35.0,
                color: Colors.deepPurple
              ),),
              SizedBox(height: 10.0,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Calculation()));
                },
                child: Container(
                  height: 60.0,
                  width: 500.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.deepOrangeAccent,Colors.lightGreen]),
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
