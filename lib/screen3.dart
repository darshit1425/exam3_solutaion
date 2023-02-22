import 'dart:async';

import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}
class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '3');
    },);
    return Scaffold(
      backgroundColor: Colors.brown.shade300,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 400,
              width: 400,
              child: FlutterLogo(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "My Flutter",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          )
        ],
      ),
    );
  }
}