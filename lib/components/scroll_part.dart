import 'package:flutter/material.dart';
import 'package:hymn/components/album_art.dart';
import 'package:hymn/constants.dart';

class ScrollPart extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final String text;
  final BorderRadiusGeometry borderRadius;
  final double containerHeight;

  ScrollPart(
      {this.color,
      this.height,
      this.width,
      this.text,
      this.borderRadius,
      this.containerHeight});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text(text ?? 'For You', style: kScrollPartText),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {},
        ),
        Container(
          margin: EdgeInsets.only(
            bottom: 20.0,
          ),
          height: containerHeight ?? 250.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              AlbumArt(
                color: color,
                height: height,
                width: width,
                borderRadius: borderRadius,
              ),
              AlbumArt(
                color: color,
                height: height,
                width: width,
                borderRadius: borderRadius,
              ),
              AlbumArt(
                color: color,
                height: height,
                width: width,
                borderRadius: borderRadius,
              ),
              AlbumArt(
                color: color,
                height: height,
                width: width,
                borderRadius: borderRadius,
              ),
              AlbumArt(
                color: color,
                height: height,
                width: width,
                borderRadius: borderRadius,
              ),
              AlbumArt(
                color: color,
                height: height,
                width: width,
                borderRadius: borderRadius,
              ),
              AlbumArt(
                color: color,
                height: height,
                width: width,
                borderRadius: borderRadius,
              ),
              AlbumArt(
                color: color,
                height: height,
                width: width,
                borderRadius: borderRadius,
              ),
            ],
          ),
        )
      ],
    );
  }
}
