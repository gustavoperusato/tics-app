// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import '../alternatives/alternative0.dart';
import '../tasks/tasks0.dart';
import '../tasks/tasks1.dart';

class Tasks0Check extends StatefulWidget {
  final task;
  final task_image;

  Tasks0Check({this.task, this.task_image});
  @override
  _Tasks0CheckState createState() => _Tasks0CheckState();
}

class _Tasks0CheckState extends State<Tasks0Check> {
  final List_Item = [
    {
      'pic': 'assets/img/task_complete.png',
    },
    {
      'pic': 'assets/img/task_incomplete.png',
    }
  ];
  final List<Color> List_Colors = [
    Colors.green,
    Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          style: TextStyle(color: Colors.white),
          'Rotina TEA',
        ),
      ),
      body: ListView.builder(
        itemCount: List_Item.length,
        itemBuilder: (BuildContext context, int i) {
          return Alternative0(
            product_image: List_Item[i]['pic'],
            image_color: List_Colors[i],
            task: widget.task,
            task_image: widget.task_image,
          );
        },
      ),
    );
  }
}
