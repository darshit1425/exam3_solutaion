import 'package:flutter/material.dart';

import 'Modalclass.dart';

import 'main.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

TextEditingController txtid = TextEditingController();
TextEditingController txtname = TextEditingController();
TextEditingController txtstd = TextEditingController();

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Student App",
            style: GoogleFonts.alegreya(),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Stack(
          children: [
            ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: l1.length,
              padding: EdgeInsets.all(10),
              itemBuilder: (context, index) => Mywidget(
                  l1[index].id!, l1[index].name!, l1[index].std!, index),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    Navigator.pushNamed(context, 'data').then(
                      (value) {
                        setState(() {});
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void UpdateDialog(String name, String id, String std, index) {
    txtname = TextEditingController(text: name);
    txtid = TextEditingController(text: id);
    txtstd = TextEditingController(text: std);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: txtid,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.amber,
                )),
                label: Text("Your id "),
                hintText: "Enter your id:",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: txtname,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.amber,
                )),
                label: Text("Your name "),
                hintText: "Enter your name:",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: txtstd,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.amber,
                )),
                label: Text("Your edu "),
                hintText: "Enter your education:",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  modalclass d1 = modalclass(
                    id: txtid.text,
                    std: txtstd.text,
                    name: txtname.text,
                  );
                  setState(() {
                    l1[index] = d1;
                  });
                  Navigator.pop(context);
                },
                child: Text("UPDATE"))
          ],
        ),
      ),
    );
  }

  Widget Mywidget(String? id, String? name, String? std, int index) {
    return ListTile(
      leading: Text(
        "$id",
        style: TextStyle(fontSize: 18),
      ),
      title: Text("$name"),
      subtitle: Text("$std"),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                UpdateDialog(name!, id!, std!, index);
              },
              icon: Icon(
                Icons.edit,
                color: Colors.green.shade300,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  l1.removeAt(index);
                });
              },
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
