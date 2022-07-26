// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import '../checks/tasks3_0_0check.dart';

class Tasks3_0_0 extends StatefulWidget {
  final List<Color> ColorList;

  Tasks3_0_0({required this.ColorList});
  @override
  _Tasks3_0_0State createState() => _Tasks3_0_0State();
}

class _Tasks3_0_0State extends State<Tasks3_0_0> {
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
          return Product0(
            product_image: List_Item[i]['pic'],
            task_color: widget.ColorList[i],
            task: i,
          );
        },
      ),
    );
  }
}

class Product0 extends StatelessWidget {
  final product_image;
  final task;
  final task_color;

  Product0({this.product_image, this.task, this.task_color});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_image,
        child: Material(
          child: InkWell(
            onTap: () {
              if (task == 0) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Tasks3_0_0Check(task: task)));
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

  Future<dynamic> taskIncorrect(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Impossível prosseguir'),
        content: const Text('Você deve seguir a ordem das tarefas!'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Voltar ao app'),
          ),
        ],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
