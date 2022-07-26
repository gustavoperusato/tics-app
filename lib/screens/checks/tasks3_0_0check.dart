// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:newapp/screens/preview_image.dart';
import '../tasks/tasks3_0.dart';

class Tasks3_0_0Check extends StatefulWidget {
  final task;

  Tasks3_0_0Check({this.task});
  @override
  _Tasks3_0_0CheckState createState() => _Tasks3_0_0CheckState();
}

class _Tasks3_0_0CheckState extends State<Tasks3_0_0Check> {
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
          return Alternative1(
            product_image: List_Item[i]['pic'],
            image_color: List_Colors[i],
            task: widget.task,
          );
        },
      ),
    );
  }
}

class Alternative1 extends StatelessWidget {
  final product_image;
  final image_color;
  final task;

  Alternative1({this.product_image, this.image_color, this.task});
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
                    builder: (context) => Tasks3_0(ColorList: [
                          Colors.green,
                          Colors.green,
                          Colors.yellow,
                          Colors.yellow,
                        ])));
              } else {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Tasks3_0(ColorList: [
                          // TODO

                          Colors.green,
                          Colors.yellow,
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
