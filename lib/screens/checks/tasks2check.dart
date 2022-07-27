// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import '../alternatives/alternative2.dart';
import '../tasks/tasks3.dart';
import '../tasks/tasks2.dart';

class Tasks2Check extends StatefulWidget {
  final task;
  final task_image;

  Tasks2Check({this.task, this.task_image});
  @override
  _Tasks2CheckState createState() => _Tasks2CheckState();
}

class _Tasks2CheckState extends State<Tasks2Check> {
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
          return Alternative2(
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
