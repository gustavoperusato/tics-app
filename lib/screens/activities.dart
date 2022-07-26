// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:newapp/screens/homepage.dart';

class ActivitiesScreen extends StatefulWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  var cIndex = 1;

  final tabs = [
    const Center(child: Text('')),
    const Center(child: Text('')),
    const Center(child: Text('')),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              style: TextStyle(color: Colors.white),
              'Rotina TEA',
            ),
          ),
          bottomNavigationBar: ActivitiesBottomNav(context)),
    );
  }

  BottomNavigationBar ActivitiesBottomNav(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: cIndex,
      type: BottomNavigationBarType.fixed,
      iconSize: 40,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.navigate_before),
          label: 'Sair do App',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          label: 'Início',
          icon: Icon(Icons.home),
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.navigate_next),
          label: 'Avançar',
          backgroundColor: Colors.green,
        ),
      ],
      onTap: (index) {
        if (index == 2) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ActivitiesScreen(),
            ),
          );
          setState(() {
            index = 1;
          });
        } else if (index == 0) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        }
        {
          setState(() {
            index = index;
          });
        }
      },
    );
  }
}
