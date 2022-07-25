// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newapp/screens/preview_image.dart';
import 'package:newapp/screens/complete_task.dart';

class SubTask extends StatefulWidget {
  final List<Color> ColorList;

  SubTask({required this.ColorList});
  @override
  _SubTaskState createState() => _SubTaskState();
}

class _SubTaskState extends State<SubTask> {
  final List_Item = [
    {
      'pic': 'assets/img/1.jpg',
    },
    {
      'pic': 'assets/img/2.jpg',
    },
    {
      'pic': 'assets/img/3.jpg',
    },
    {
      'pic': 'assets/img/4.jpg',
    }
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
          return Product(
            product_image: List_Item[i]['pic'],
            task_color: widget.ColorList[i],
            task: List_Item[i],
          );
        },
      ),
    );
  }
}

class Product extends StatelessWidget {
  final product_image;
  final task;
  final task_color;

  Product({this.product_image, this.task, this.task_color});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_image,
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CompleteTask(task: task)));
              // PreviewImage(picDetails_view: product_image)));
            },
            child: GridTile(
              child: Container(
                  color: task_color,
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
