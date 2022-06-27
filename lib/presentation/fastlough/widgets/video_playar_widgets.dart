import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

class VideoPlayerWidget extends StatelessWidget {
  const VideoPlayerWidget({Key? key, required this.icon, required this.text})
      : super(key: key);
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          shadows: [Shadow(color: Colors.black, blurRadius: 5)],
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white, shadows: [
            Shadow(
                offset: Offset.fromDirection(-50.0, 1.0),
                color: Colors.black,
                blurRadius: 5)
          ]),
        ),
        kwidth
      ],
    );
  }
}
