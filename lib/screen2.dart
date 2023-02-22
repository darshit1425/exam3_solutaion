import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Modalclass.dart';

import 'main.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  TextEditingController txtid = TextEditingController();
  TextEditingController txtname = TextEditingController();
  TextEditingController txtstd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade700,
          title: Text(
            "Add Data ",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your grid:-",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                controller: txtid,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your Name:-",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                controller: txtname,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your Std:-",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                controller: txtstd,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    modalclass d1 = modalclass(
                        id: txtid.text, name: txtname.text, std: txtstd.text);
                    setState(
                      () {
                        l1.add(d1);
                      },
                    );
                    Navigator.pop(context);
                  },
                  child: Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }
}
