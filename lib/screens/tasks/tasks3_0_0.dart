// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors, camel_case_types

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:newapp/screens/tasks/tasks3_1.dart';

import '../../widgets/taskComplete.dart';

class Tasks3_0_0 extends StatefulWidget {
  final List<Color> ColorList;

  Tasks3_0_0({required this.ColorList});
  @override
  _Tasks3_0_0State createState() => _Tasks3_0_0State();
}

class _Tasks3_0_0State extends State<Tasks3_0_0> {
  final List_Item = [
    {
      'pic': 'assets/img/9.jpg',
    },
    {
      'pic': 'assets/img/10.jpg',
    },
    {
      'pic': 'assets/img/11.jpg',
    },
    {
      'pic': 'assets/img/12.jpg',
    },
    {
      'pic': 'assets/img/13.jpg',
    },
    {
      'pic': 'assets/img/14.jpg',
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
          return Product3_0_0(
            product_image: List_Item[i]['pic'],
            task_color: widget.ColorList[i],
            task: i,
          );
        },
      ),
    );
  }
}

class Product3_0_0 extends StatelessWidget {
  final product_image;
  final task;
  final task_color;

  Product3_0_0({this.product_image, this.task, this.task_color});
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
              taskComplete(
                  context,
                  Tasks3_1(ColorList: [
                    Colors.green,
                    Colors.yellow,
                    Colors.yellow,
                    Colors.yellow,
                  ]));
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
