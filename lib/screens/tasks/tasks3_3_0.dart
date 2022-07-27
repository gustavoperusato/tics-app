// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors, camel_case_types

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:newapp/screens/tasks/tasks4.dart';
import 'package:newapp/widgets/tasksComplete.dart';

class Tasks3_3_0 extends StatefulWidget {
  final List<Color> ColorList;

  Tasks3_3_0({required this.ColorList});
  @override
  _Tasks3_3_0State createState() => _Tasks3_3_0State();
}

class _Tasks3_3_0State extends State<Tasks3_3_0> {
  final List_Item = [
    {
      'pic': 'assets/img/27.jpg',
    },
    {
      'pic': 'assets/img/28.jpg',
    },
    {
      'pic': 'assets/img/29.jpg',
    },
    {
      'pic': 'assets/img/30.jpg',
    },
    {
      'pic': 'assets/img/31.jpg',
    },
    {
      'pic': 'assets/img/32.jpg',
    },
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
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: List_Item.length,
        itemBuilder: (BuildContext context, int i) {
          return Product3_3_0(
            product_image: List_Item[i]['pic'],
            task_color: widget.ColorList[i],
            task: i,
          );
        },
      ),
    );
  }
}

class Product3_3_0 extends StatelessWidget {
  final product_image;
  final task;
  final task_color;

  Product3_3_0({this.product_image, this.task, this.task_color});
  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    player.setSource(AssetSource('audio/applause.wav'));
    return Card(
      child: Hero(
        tag: product_image,
        child: Material(
          child: InkWell(
            onTap: () {
              player.resume();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Tasks4(ColorList: [
                        Colors.green,
                        Colors.green,
                        Colors.green,
                        Colors.green,
                      ])));
              tasksComplete(context);
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
