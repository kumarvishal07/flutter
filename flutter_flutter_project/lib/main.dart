// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_flutter_project/second-file.dart';

// void main(){

// runApp(
//   MyClass()
// );

// }

void main() => runApp(MyClass());

class MyClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  title: 'My flutter app',
  home: SecondClass()
);

  }

}