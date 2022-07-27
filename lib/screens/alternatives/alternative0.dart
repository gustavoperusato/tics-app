import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:newapp/widgets/taskComplete.dart';
import 'package:newapp/widgets/taskcheckIncomplete.dart';
import '../tasks/tasks1.dart';

class Alternative0 extends StatelessWidget {
  final product_image;
  final image_color;
  final task;
  final task_image;

  Alternative0(
      {this.product_image, this.image_color, this.task, this.task_image});
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
              if (product_image == 'assets/img/task_complete.png') {
                player.resume();
                taskComplete(
                    context,
                    Tasks1(ColorList: [
                      Colors.green,
                      Colors.yellow,
                      Colors.yellow,
                      Colors.yellow,
                    ]));
              } else {
                taskscheckIncomplete(context, task_image);
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
