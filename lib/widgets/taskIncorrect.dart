// ignore_for_file: file_names

import 'package:flutter/material.dart';

Future<dynamic> taskIncorrect(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Impossível prosseguir'),
      content: const Text('Você deve seguir a ordem das tarefas!'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Voltar ao app'),
        ),
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  );
}
