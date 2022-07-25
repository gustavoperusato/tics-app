// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PreviewImage extends StatefulWidget {
  final picDetails_view;

  PreviewImage({this.picDetails_view});
  @override
  _PreviewImageState createState() => _PreviewImageState();
}

class _PreviewImageState extends State<PreviewImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rotina TEA',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
      ),
      body: Center(
        child: Card(
          child: Hero(
            tag: widget.picDetails_view,
            child: Material(
              child: PhotoView(
                imageProvider: AssetImage(
                  widget.picDetails_view,
                ),
                minScale: PhotoViewComputedScale.contained * 0.5,
                maxScale: PhotoViewComputedScale.contained * 5,
                enableRotation: true,
                backgroundDecoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
