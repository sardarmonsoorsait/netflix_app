import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/fastlough/widgets/video_list_widget.dart';

class FastLough extends StatelessWidget {
  const FastLough({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(
          10,
          (index) => VideoListWidget(
                index: index,
              )),
    );
  }
}
