import 'package:flutter/material.dart';

class s3 extends StatefulWidget {
  const s3({Key? key}) : super(key: key);

  @override
  _s3State createState() => _s3State();
}

class _s3State extends State<s3> {
  List name = [
    "divyesh",
    "harsh",
    "rohit",
    "ashish",
    "anil",
    "harshil",
    "divyesh",
    "harsh",
    "rohit",
    "ashish",
    "anil",
    "harshil",
  ];
  List no = [
    "+91 1234567",
    "+91 1234567",
    "+91 1234567",
    "+91 1234567",
    "+91 1234567",
    "+91 1234567",
    "+91 1234567",
    "+91 1234567",
    "+91 1234567",
    "+91 1234567",
    "+91 1234567",
    "+91 1234567",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: ListView.builder(
            itemCount: name.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text("${name[index]}(-.-)"),
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                trailing: Icon(Icons.call),
              );
            },
          ),
        ),
      ),
    );
  }
}
