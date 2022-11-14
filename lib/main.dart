import 'dart:io';
import 'package:demo/screen/Android/Android.dart';
import 'package:demo/screen/IOS/Ios.dart';
import 'package:demo/screen/Stepprt.dart';
import 'package:demo/screen/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(android());
}

Widget android() {
 return MaterialApp(
   debugShowCheckedModeBanner: false,
   home: Home_Screena(),
   //home: Stepper_Screen(),
   //home: home(),
 );
}

Widget ios() {
  return CupertinoApp(
    debugShowCheckedModeBanner: false,
    theme: CupertinoThemeData(
      brightness: Brightness.light
    ),
    home: ios_screen(),
  );
}
