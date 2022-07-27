// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../screens/tasks/tasks0.dart';

Future<dynamic> tasksComplete(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Parabéns! Você concluiu todas tarefas!'),
      content: Image.asset('assets/gif/fireworks.gif'),
      actions: <Widget>[
        TextButton(
          onPressed: () => {
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
            )
          },
          child: const Text('Começar desde o Início'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Voltar ao app'),
        ),
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  );
}
