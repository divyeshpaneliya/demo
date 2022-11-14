import 'package:flutter/material.dart';

class s2 extends StatefulWidget {
  const s2({Key? key}) : super(key: key);

  @override
  _s2State createState() => _s2State();
}

class _s2State extends State<s2> {
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
                title: Text("${name[index]}(>.<)"),
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

