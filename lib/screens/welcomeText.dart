// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newapp/widgets/mutebutton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Spacer(flex: 1),
            Text(
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Montserrat Regular',
              ),
              '''Prezados pais e/ou responsáveis:
Este aplicativo tem como objetivo organizar a rotina de crianças com autismo, assim como desenvolver a independência em atividades simples do dia a dia.''',
            ),
            const Spacer(flex: 1),
            const MuteButton(),
            const Spacer(flex: 1)
          ],
        ),
      ),
    );
  }
}
