import 'package:flutter/material.dart';
import 'package:flutter_app_assignment3/main.dart';
class Addition extends StatefulWidget {
  @override
  _AdditionState createState() => _AdditionState();
}

class _AdditionState extends State<Addition> {
  String result="0";
  TextEditingController no1=TextEditingController();
  TextEditingController no2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Addition Tool"),
        ),
        
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 5.0,),
              TextField(
                style: TextStyle(color: Colors.indigo),
                controller: no1,
                decoration: InputDecoration(
                  hintText: "Enter first Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)
                  ),
                  prefixIcon: Icon(Icons.filter_1)
                ),
              ),
              SizedBox(height: 5.0,),
              TextField(
                style: TextStyle(color: Colors.indigo),
                controller: no2,
                decoration: InputDecoration(
                  hintText: "Enter Second Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)
                  ),
                  prefixIcon: Icon(Icons.filter_2)
                ),
              ),
              SizedBox(height: 10.0,),
              GestureDetector(
                onTap: (){
                  var x=int.parse(no1.text);
                  var y=int.parse(no2.text);
                  var z=x+y;
                  setState(() {
                    result=z.toString();

                  });

                },
                child: Container(
                  height: 60.0,
                  width: 500.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.green,Colors.amberAccent]),
                    borderRadius: BorderRadius.circular(50.0)
                  ),
                  child: Center(child: Text("Add")),
                ),
              ),

              SizedBox(height: 10.0,),
              Text(result,style: TextStyle(
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
                    gradient: LinearGradient(colors: [Colors.green,Colors.amberAccent]),
                    borderRadius: BorderRadius.circular(50.0)
                  ),
                  child:Center(child: Text("Back to Calculator"))
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
