import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/domain/downloads/models/downloads.dart';
import 'package:netflix_app/presentation/fastlough/widgets/video_playar_widgets.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

ValueNotifier<bool> playNotifier = ValueNotifier(true);
ValueNotifier<bool> likeNotifier = ValueNotifier(true);

class VideoListWidget extends StatelessWidget {
  VideoListWidget({
    Key? key,
    required this.index,
    required this.movielist,
  }) : super(key: key);
  final int index;
  final List<Downloads> movielist;
  final urllist = [
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
  ];
  @override
  Widget build(BuildContext context) {
    final Downloads movie = movielist[index];
    

    return fastLoughVideoPlayer(
        urlList: urllist[index % urllist.length],
        onStateChanged: (bool) {},movie: movie,);
  }
}

class fastLoughVideoPlayer extends StatefulWidget {
  const fastLoughVideoPlayer(
      {Key? key,
      required this.urlList,
      required this.onStateChanged,
      required this.movie})
      : super(key: key);
  final urlList;
  final void Function(bool isPlaying) onStateChanged;
  final Downloads movie;
  @override
  State<fastLoughVideoPlayer> createState() => _fastLoughVideoPlayerState();
}

class _fastLoughVideoPlayerState extends State<fastLoughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  late Future<void> _intializeVideoPlayFuture;

  @override
  void initState() {
    // TODO: implement initState
    _videoPlayerController = VideoPlayerController.network(widget.urlList);
    _intializeVideoPlayFuture = _videoPlayerController.initialize();
    _videoPlayerController.play();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _intializeVideoPlayFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: Stack(
                  children: [
                    VideoPlayer(_videoPlayerController),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 24),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ValueListenableBuilder(
                                valueListenable: playNotifier,
                                builder: (BuildContext ctx, bool val, _) {
                                  return playNotifier.value == true
                                      ? (IconButton(
                                          icon: Icon(Icons
                                              .pause_circle_filled_outlined),
                                          iconSize: 50,
                                          color: Colors.white.withOpacity(0.8),
                                          onPressed: () {
                                            playNotifier.value = false;
                                            _videoPlayerController.pause();
                                          },
                                        ))
                                      : (IconButton(
                                          icon: Icon(Icons.play_arrow_outlined),
                                          iconSize: 50,
                                          color: Colors.white.withOpacity(0.8),
                                          onPressed: () {
                                            playNotifier.value = true;
                                            _videoPlayerController.play();
                                          },
                                        ));
                                }),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      '$apiAppendUrl${widget.movie.posterPath}'),
                                ),
                                kwidth,
                                ValueListenableBuilder(
                                    valueListenable: likeNotifier,
                                    builder: (BuildContext ctx, bool val, _) {
                                      return GestureDetector(
                                          onTap: () {
                                            likeNotifier.value
                                                ? likeNotifier.value = false
                                                : likeNotifier.value = true;
                                          },
                                          child: likeNotifier.value
                                              ? VideoPlayerWidget(
                                                  icon: Icons.emoji_emotions,
                                                  text: 'LOL')
                                              : VideoPlayerWidget(
                                                  icon: Icons.favorite_sharp,
                                                  text: 'liked',
                                                ));
                                    }),
                                VideoPlayerWidget(
                                    icon: Icons.add, text: 'Add Video'),
                                GestureDetector(
                                    onTap: () => Share.share(
                                        '$apiAppendUrl${widget.movie.posterPath}'),
                                    child: VideoPlayerWidget(
                                        icon: Icons.ios_share, text: 'Share')),
                                VideoPlayerWidget(
                                    icon: Icons.play_arrow, text: 'Play'),
                              ],
                            )
                          ]),
                    )
                  ],
                ),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
