
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Modalclass.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';


List<modalclass> l1 = [];

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    routes: {
      '/': (context) => Screen3(),
      '3': (context) => Screen1(),
      'data': (context) => Screen2(),
    },
  ),);
}