import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/downloads/downloads_bloc.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class DownlodsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(DownloadsEvent.getDownloadImages());
    });

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: backgroundColor,
        // ignore: prefer_const_constructors
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50), child: AppBarWidget()),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 30, top: 25),
              child: _smartdownload(),
            ),
            Text(
              'Introducing Downloads for you',
              style: TextStyle(fontSize: 22, color: textColor),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 40, right: 40, top: 30, bottom: 25),
              child: Text(
                'We will downloaded a personalised slection of movies and shows for you,so there is always somthing to watch on your device',
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            BlocBuilder<DownloadsBloc, DownloadsState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Text('${apiAppendUrl}${state.downloads[5].posterPath}'),
                    SizedBox(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            radius: 120,
                            backgroundColor: Colors.grey,
                          ),
                          Transform.rotate(
                              alignment: Alignment(0, 2),
                              angle: 25 * pi / 180,
                              child: Container(
                                height: 200,
                                width: 125,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            '${apiAppendUrl}${state.downloads[4].posterPath}')),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blue),
                              )),
                          Transform.rotate(
                              alignment: Alignment(0, 2),
                              angle: -(25 * pi / 180),
                              child: Container(
                                height: 200,
                                width: 125,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            '${apiAppendUrl}${state.downloads[1].posterPath}')),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.green),
                              )),
                          Container(
                            height: 200,
                            width: 125,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        '${apiAppendUrl}${state.downloads[2].posterPath}')),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.amber),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30.0,
                right: 30.0,
                top: 60,
              ),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'SetUp',
                    style: TextStyle(color: textColor),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: MaterialButton(
                onPressed: () {},
                child: Text('See What You Can Download'),
                color: textColor,
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _smartdownload() {
    return Row(
      children: [
        Icon(
          Icons.settings,
          color: textColor,
        ),
        Text('Smart Downloads', style: TextStyle(color: textColor))
      ],
    );
  }
}
