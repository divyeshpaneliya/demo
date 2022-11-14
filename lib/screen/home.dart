import 'package:demo/screen/s2.dart';
import 'package:demo/screen/s3.dart';
import 'package:demo/screen/screen1.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int i = 0;
  List icon = [
    Icons.contacts,
    Icons.save,
    Icons.settings,
    Icons.person_add,
    Icons.help
  ];
  List iname = [
    "contact",
    "Saves Messages",
    "Setting",
    "Invite Friends",
    "Help"
  ];
  List screen = const[s1(), s2(), s3()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade300,
          title: Text("..."),
          actions: [Icon(Icons.search)],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 100,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUyIQ2TYH4LD9PCoO3I3xy-XZ4rm-I3Jg_eQ&usqp=CAU',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: Icon(icon[0]),
                title: Text("${iname[0]}"),
              ),
              ListTile(
                leading: Icon(icon[1]),
                title: Text("${iname[1]}"),
              ),
              ListTile(
                leading: Icon(icon[2]),
                title: Text("${iname[2]}"),
              ),
              ListTile(
                leading: Icon(icon[3]),
                title: Text("${iname[3]}"),
              ),
              ListTile(
                leading: Icon(icon[3]),
                title: Text("${iname[4]}"),
              ),
            ],
          ),
        ),
        body: screen[i],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: "Status"),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
          ],
          currentIndex: i,
          onTap: (position) {
            setState(() {
              i = position;
            });
          },
        ),
      ),
    );
  }
}
