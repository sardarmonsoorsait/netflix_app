import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/fastlough/widgets/video_playar_widgets.dart';

class VideoListWidget extends StatelessWidget {
  
  const VideoListWidget({Key? key, required this.index}) : super(key: key);
 final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 24),
          child: Row(crossAxisAlignment:CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.spaceBetween
      ,children: [
          Icon(Icons.pause_circle_filled_outlined,size: 50,color: Colors.white.withOpacity(0.8),shadows: [Shadow(color: Colors.black,blurRadius: 1)],),
          Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(radius:30,backgroundImage: NetworkImage('https://www.themoviedb.org/t/p/w600_and_h900_bestv2/neMZH82Stu91d3iqvLdNQfqPPyl.jpg'),),
            kwidth,
              VideoPlayerWidget(icon: Icons.emoji_emotions, text: 'LOL'),
            
              VideoPlayerWidget(icon: Icons.add, text: 'Add Video'),
            
              VideoPlayerWidget(icon: Icons.ios_share, text: 'Share'),
              VideoPlayerWidget(icon: Icons.play_arrow, text: 'Play'),

              ],)]),
        )
      ],
    );
  }
}
