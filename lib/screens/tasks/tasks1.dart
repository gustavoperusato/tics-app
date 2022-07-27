// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newapp/screens/checks/tasks1check.dart';

import '../../widgets/taskIncorrect.dart';

class Tasks1 extends StatefulWidget {
  final List<Color> ColorList;

  Tasks1({required this.ColorList});
  @override
  _Tasks1State createState() => _Tasks1State();
}

class _Tasks1State extends State<Tasks1> {
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
          return Product1(
            product_image: List_Item[i]['pic'],
            task_color: widget.ColorList[i],
            task: i,
          );
        },
      ),
    );
  }
}

class Product1 extends StatelessWidget {
  final product_image;
  final task;
  final task_color;

  Product1({this.product_image, this.task, this.task_color});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_image,
        child: Material(
          child: InkWell(
            onTap: () {
              if (task == 1) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Tasks1Check(
                          task: task,
                          task_image: product_image,
                        )));
              } else {
                taskIncorrect(context);
              }
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
