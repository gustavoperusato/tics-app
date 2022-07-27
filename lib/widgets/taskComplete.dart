// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

Future<dynamic> taskComplete(BuildContext context, next_task) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Parabéns! Você concluiu a tarefa!'),
      content: Image.asset('assets/gif/clapping-hands.gif'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => next_task));
          },
          child: const Text('Continuar'),
        ),
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  );
}
