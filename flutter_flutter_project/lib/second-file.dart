import 'dart:math';

import 'package:flutter/material.dart';

class SecondClass extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.yellow,
      child: Container(
        height: 400.0,
        width: 200.0,
        alignment: Alignment(0,0),
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Colors.green, Colors.yellow, Colors.pink, Colors.blue],
            stops:[0.2,0.5,0.7,1],
            center: Alignment(0.1,0.3),
            focal: Alignment(-0.1,0.6)
          )
        ),
        child: GestureDetector(
onTap: (){
  ScaffoldMessenger.of(context).showSnackBar((new SnackBar(content: new Text('It was tapped.'),
  
  duration: Duration(seconds: 2)
  )));
},
child: Text(getRandomNumber(), textDirection: TextDirection.ltr),
        ),
      ),

    );
  
  }
  
  String getRandomNumber() {
    var v = Random();
    int i = v.nextInt(20);
    return "random number between 0 and 20 is $i";
  }

}