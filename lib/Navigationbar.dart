import 'package:flutter/material.dart';
import 'package:v1app/screens/screen1.dart';
import 'package:v1app/screens/screen2.dart';
import 'package:v1app/screens/screen3.dart';
import 'package:v1app/screens/screen4.dart';

class Navigationbarrr extends StatefulWidget {
  const Navigationbarrr({super.key});


  @override
  State<Navigationbarrr> createState() => _NavigationbarrrState();
}

class _NavigationbarrrState extends State<Navigationbarrr> {
  int myIndex = 0;
  List<Widget> widgetList = [
    ClockWidget(),
    Task(),
    EventCalendarScreen(),
    Item(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: widgetList,
        index: myIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myIndex =index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock), label: 'Clock'),
          BottomNavigationBarItem(
            icon: Icon(Icons.task), label: 'Task'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: 'Planer'),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions), label: 'Credit')
        ],
        selectedLabelStyle: TextStyle(fontSize: 14.0),
        unselectedLabelStyle: TextStyle(fontSize: 14.0),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        iconSize: 30,
      ),
    );
  }
}
