//import 'dart:ffi';
//import 'dart:typed_data';

import 'package:flutter/material.dart';
//import 'package:flutter/SecondPage.dart'
import 'package:flutter_dev/SecondPage.dart';
import 'package:flutter_dev/main.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const MyHomePage(),
        '/second' : (context) => SecondPage(),

      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double typedouble = 0;
  double height = 0;


  void _IncrementCounter(){
    setState(() {
      typedouble++;
    });
  }
  void _DecrementCounter(){
    setState(() {
      typedouble--;
    });
  }

  void _IncrementCounte1r(){
    setState(() {
      height++;
    });
  }
  void _DecrementCounte2r(){
    setState(() {
      height--;
    });
  }


  // double bmic(){
  //   //double bmi = ;
  //   print(bmi);
  //   return bmi;
  // }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text("BMI Calculator", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Hello welcome to BMI Calculator",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.red)),

          Container(

            height:150,
            width: 650,
            color: Colors.yellow,

            child: Row(

              children: [
                Text(
                  "Weight ${typedouble.round()}", style: TextStyle(fontSize: 23, fontWeight: FontWeight.normal ,color: Colors.red),
                ),

                ElevatedButton(

                  onPressed: _IncrementCounter,
                  child: Text('+'),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(23),
                  ),
                ),
                ElevatedButton(
                  onPressed: _DecrementCounter,
                  child: Text('-'),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(23),
                  ),
                ),

                Slider(value: typedouble,min:0,max:635, onChanged: (value){
                  setState(() {
                    typedouble = value;
                  });
                })
              ],
            ),

          ),
          Container(

            height:150,
            width: 650,
            color: Colors.grey,

            child: Row(

              children: [
                Text(
                  "Height ${height.round()}", style: TextStyle(fontSize: 23, fontWeight: FontWeight.normal ,color: Colors.red),
                ),

                ElevatedButton(

                  onPressed: _IncrementCounte1r,
                  child: Text('+'),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(23),
                  ),
                ),
                ElevatedButton(
                  onPressed: _DecrementCounte2r,
                  child: Text('-'),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(23),
                  ),
                ),

                Slider(value: height,min:0,max:140, activeColor: Colors.green,onChanged: (value){
                  setState(() {
                    height = value;
                  });
                })
              ],
            ),
          ),
          Container(

              height:100,
              width: 100,
              color: Colors.black87,
              child: Column(
mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  TextButton(onPressed: (){
                    //double bmi = bmic();
                    Navigator.pushNamed(context, "/second",arguments: Argument(((typedouble) / (height)*(height))));
              },

                  child: Column(

                    children: [
    Text("Calculate", style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.deepPurple
          )

                  )



                ],

              )


          ),

          Container(
            height: 33,
            width: 49,
            color: Colors.purple,
//padding: EdgeInsets.fromLTRB(70, 40, 40, 40),
              child: Column(

              children: [

                Text("BMI}",style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  color: Colors.deepPurple

                   )

                ),
            ],

          )


          ),

      ],


    ),

    )]));
}}




