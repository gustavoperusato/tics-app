// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import '../../widgets/taskIncorrect.dart';
import 'package:newapp/screens/tasks/tasks3_3_0.dart';

class Tasks3_3 extends StatefulWidget {
  final List<Color> ColorList;

  Tasks3_3({required this.ColorList});
  @override
  _Tasks3_3State createState() => _Tasks3_3State();
}

class _Tasks3_3State extends State<Tasks3_3> {
  final List_Item = [
    {
      'pic': 'assets/img/5.jpg',
    },
    {
      'pic': 'assets/img/6.jpg',
    },
    {
      'pic': 'assets/img/7.jpg',
    },
    {
      'pic': 'assets/img/8.jpg',
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
          return Product3_3(
            product_image: List_Item[i]['pic'],
            task_color: widget.ColorList[i],
            task: i,
          );
        },
      ),
    );
  }
}

class Product3_3 extends StatelessWidget {
  final product_image;
  final task;
  final task_color;

  Product3_3({this.product_image, this.task, this.task_color});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_image,
        child: Material(
          child: InkWell(
            onTap: () {
              if (task == 3) {
                Navigator.of(context).push(MaterialPageRoute(
                    // ignore: prefer_const_literals_to_create_immutables
                    builder: (context) => Tasks3_3_0(ColorList: [
                          Colors.yellow,
                          Colors.yellow,
                          Colors.yellow,
                          Colors.yellow,
                          Colors.yellow,
                          Colors.yellow,
                        ])));
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
