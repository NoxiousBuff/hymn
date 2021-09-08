import 'package:flutter/material.dart';
import 'package:hymn/constants.dart';

class AlbumArt extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final BorderRadiusGeometry borderRadius;

  AlbumArt({this.width, this.height, this.color, this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: height ?? 250.0,
      width: width ?? 250.0,
      decoration: BoxDecoration(
        color: color ?? kRandomColor,
        borderRadius: borderRadius ?? BorderRadius.circular(30),
      ),
    );
  }
}
