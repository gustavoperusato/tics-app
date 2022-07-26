// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newapp/screens/tasks/tasks0.dart';
import 'package:newapp/screens/welcomeText.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;
  final tabs = [
    const Center(child: Text('')),
    WelcomeScreen(),
    WelcomeScreen(),
  ];

  Future<dynamic> exitDialog() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Você clicou em sair'),
              content: const Text('Tem certeza que deseja sair do app?'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => SystemNavigator.pop(animated: true),
                  child: const Text('Sim, sair!'),
                ),
                TextButton(
                  onPressed: () => {
                    Navigator.pop(context),
                    setState(() {
                      _currentIndex = 1;
                    })
                  },
                  child: const Text('Cancelar!'),
                ),
              ],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ));
  }

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
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
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
                  builder: (context) => Tasks0(
                    // ignore: prefer_const_literals_to_create_immutables
                    ColorList: [
                      Colors.yellow,
                      Colors.yellow,
                      Colors.yellow,
                      Colors.yellow,
                    ],
                  ),
                ),
              );
              setState(() {
                index = 1;
              });
            } else if (index == 0) {
              exitDialog();
            }
            {
              setState(() {
                _currentIndex = index;
              });
            }
          },
        ),
      ),
    );
  }
}
