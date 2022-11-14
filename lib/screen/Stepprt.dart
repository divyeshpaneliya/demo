import 'dart:io';

import 'package:flutter/material.dart';

class Stepper_Screen extends StatefulWidget {
  const Stepper_Screen({Key? key}) : super(key: key);

  @override
  _Stepper_ScreenState createState() => _Stepper_ScreenState();
}

class _Stepper_ScreenState extends State<Stepper_Screen> {
  int i = 0;
  var intialDate = DateTime.now();
  var intialTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Resume"),
        ),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stepper(
                  currentStep: i,
                  onStepTapped: (ps) {
                    setState(() {
                      i = ps;
                    });
                  },
                  onStepContinue: () {
                    setState(() {
                      if (i < 3) {
                        i++;
                      }
                    });
                  },
                  onStepCancel: () {
                    setState(() {
                      if (i > 0) {
                        i--;
                      }
                    });
                  },

                  steps: [
                    //personal info
                    Step(
                      title: Text("Personal Information"),
                      content: Column(
                        children: [
                          TextField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
                          ),
                        ],
                      ),
                    ),
                    //work info
                    Step(
                        title: Text("Work Information"),
                        content: TextField(
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        )),
                    //skill info
                    Step(
                        title: Text("Skill Information"),
                        content: TextField(
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        )),
                    //edu info
                    Step(
                        title: Text("Education Information"),
                        content: TextField(
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        )),
                  ],
                ),

                SizedBox(
                  height: 5,
                ),
                //date-month-year
                Text(
                    "${intialDate.day}/ ${intialDate.month} / ${intialDate.year}"),

                SizedBox(
                  height: 20,
                ),
                //hour-minute
                Text(
                  "${intialTime.hour}/ ${intialTime.minute}",
                ),

                SizedBox(
                  height: 20,
                ),
                //enter email-with bottumsheet
                ElevatedButton(
                    onPressed: () {
                      bottomSheetWidget(context);
                    },
                    child: Text("Enter Email")),
                SizedBox(
                  height: 20,
                ),
                //date picker -with date dialog
                ElevatedButton(
                    onPressed: () {
                      datePickerDialog();
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                    child: Text("Date")),
                SizedBox(
                  height: 20,
                ),
                //time picker
                ElevatedButton(
                  onPressed: () {
                    timePickerDialog();
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: Text("Time"),
                ),
                //platform(ios or android)
                ElevatedButton(
                  onPressed: () {
                    if (Platform.isAndroid) {
                      print("Android");
                    } else if (Platform.isIOS) {
                      print("IOS");
                    }
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: Text("Platform"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void bottomSheetWidget(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          children: [
            Container(
              height: 300,
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text("Email")),
              ),
            ),
            TextButton(onPressed: (){Navigator.pop(context);}, child: Text("ohk"))
          ],
        );
      },
    );
  }

  void datePickerDialog() async {
    DateTime? d1 = await showDatePicker(
        context: context,
        initialDate: intialDate,
        firstDate: DateTime(2001),
        lastDate: DateTime(2050));
    setState(() {
      intialDate = d1!;
    });
  }

  void timePickerDialog() async {
    TimeOfDay? t1 =
        await showTimePicker(context: context, initialTime: intialTime);
    setState(() {
      intialTime = t1!;
    });
  }
}
