import 'package:demo/util/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ios_screen extends StatefulWidget {
  const ios_screen({Key? key}) : super(key: key);

  @override
  _ios_screenState createState() => _ios_screenState();
}

class _ios_screenState extends State<ios_screen> {
  bool check = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
  bool check5 = false;
  bool check6 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Icon(CupertinoIcons.back),
          backgroundColor: primary,
          middle: Text("ios_screen"),
          trailing: Icon(CupertinoIcons.slider_horizontal_3),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  // modalSheet();
                  c_dialog();
                },

                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Select",
                      style: TextStyle(color: CupertinoColors.activeGreen),
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Item 1"),
                  CupertinoSwitch(
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
                  CupertinoSwitch(
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
                    style: TextStyle(color: CupertinoColors.activeGreen),
                  )),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Option 1"),
                  Icon(CupertinoIcons.check_mark),
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
                    style: TextStyle(color: CupertinoColors.systemGreen),
                  )),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Item 1"),
                  Icon(CupertinoIcons.chevron_compact_right)
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Item 2"),
                  Icon(CupertinoIcons.chevron_compact_right)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void modalSheet() {
    showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return CupertinoActionSheet(
            title: Text("Select city"),
            actions: [
              CupertinoActionSheetAction(
                  onPressed: () {}, child: Text("Surat")),
              CupertinoActionSheetAction(
                  onPressed: () {}, child: Text("Bharuch")),
              CupertinoActionSheetAction(
                  onPressed: () {}, child: Text("Amreli")),
              CupertinoActionSheetAction(
                  onPressed: () {}, child: Text("Rajkot")),
              CupertinoActionSheetAction(
                  onPressed: () {}, child: Text("Kachha")),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("CLOSE"),
            ),
          );
        });
  }
  
  void c_dialog()
  {
    showCupertinoModalPopup(context: context, builder: (contex){
      return CupertinoAlertDialog(
        title: Text("Are to sure for Exit?"),
        actions: [
          CupertinoDialogAction(child: Text("Yes"),onPressed: (){},),
          CupertinoDialogAction(child: Text("No"),onPressed: (){},)
        ],
      );
    });
  }
}
