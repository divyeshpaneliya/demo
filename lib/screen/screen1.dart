import 'package:flutter/material.dart';

class s1 extends StatefulWidget {
  const s1({Key? key}) : super(key: key);

  @override
  _s1State createState() => _s1State();
}

class _s1State extends State<s1> {
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
                title: Column(
                  children: [
                    Align(alignment: Alignment.topLeft,child: Text("${name[index]}")),
                    Align(alignment: Alignment.topLeft,child: Text("${no[index]}")),
                  ],
                ),
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
