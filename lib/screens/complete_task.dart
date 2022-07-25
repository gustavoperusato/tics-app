// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:newapp/screens/preview_image.dart';
import 'package:newapp/screens/subtask.dart';

class CompleteTask extends StatefulWidget {
  final task;

  CompleteTask({this.task});
  @override
  _CompleteTaskState createState() => _CompleteTaskState();
}

class _CompleteTaskState extends State<CompleteTask> {
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
          return Alternative(
            product_image: List_Item[i]['pic'],
            image_color: List_Colors[i],
            task: widget.task,
          );
        },
      ),
    );
  }
}

class Alternative extends StatelessWidget {
  final product_image;
  final image_color;
  final task;

  Alternative({this.product_image, this.image_color, this.task});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_image,
        child: Material(
          child: InkWell(
            onTap: () {
              if (product_image == 'assets/img/task_complete.png') {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SubTask(ColorList: [
                          Colors.yellow,
                          Colors.green,
                          Colors.yellow,
                          Colors.yellow,
                        ])));
              }
            },
            child: GridTile(
              child: Container(
                  color: image_color,
                  padding: EdgeInsets.all(16),
                  child: Image.asset(
                    product_image,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
