import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Screena extends StatefulWidget {
  const Home_Screena({Key? key}) : super(key: key);

  @override
  _Home_ScreenaState createState() => _Home_ScreenaState();
}

class _Home_ScreenaState extends State<Home_Screena> {
  bool check = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
  bool check5 = false;
  bool check6 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor: Colors.teal,
          title: Text("Android"),
          actions: [
            Icon(Icons.apps_rounded),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Select",
                    style: TextStyle(color: Colors.green),
                  )),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Item 1"),
                  Switch(
                      value: check,
                      onChanged: (c1) {
                        setState(() {
                          check = c1;
                        });
                      }),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Item 2"),
                  Switch(
                      value: check2,
                      onChanged: (c1) {
                        setState(() {
                          check2 = c1;
                        });
                      }),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Option",
                    style: TextStyle(color: Colors.green),
                  )),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Option 1"),
                  Icon(Icons.check),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Option 2"),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Like",
                    style: TextStyle(color: Colors.green),
                  )),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Item 1"),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Item 2"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


}
