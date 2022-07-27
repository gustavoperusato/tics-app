// ignore_for_file: file_names

import 'package:flutter/material.dart';

Future<dynamic> taskscheckIncomplete(BuildContext context, task_image) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Complete a tarefa!'),
      content: Image.asset(task_image),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Continuar'),
        ),
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  );
}
