import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix_app/application/fast_lough/fastlough_bloc.dart';
import 'package:netflix_app/application/newhot/newhot_bloc.dart';
import 'package:netflix_app/application/watching/bloc/watching_bloc.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/domain/watching/models/result.dart';
//import 'package:netflix_app/domain/new_hot/newhot/result.dart';

import '../../core/strings.dart';

class NewHot extends StatelessWidget {
  NewHot({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(title),
              bottom: TabBar(
                  indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: '🍿Comming Soon',
                    ),
                    Tab(
                      text: '👀 Everyones Watching',
                    )
                  ]),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(color: Colors.amber),
                )
              ]),
          body: TabBarView(children: [TbpageOne(), TbpageTwo()])),
    );
  }
}

class TbpageOne extends StatelessWidget {
  const TbpageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<NewhotBloc>(context).add((const NewhotEvent.intialize()));
    });
    return BlocBuilder<NewhotBloc, NewhotState>(
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: ((context, index) {
            return newhot(context, index, state);
          }),
          itemCount: state.movieList.length,
        );
      },
    );
  }

  Row newhot(BuildContext context, int index, NewhotState state) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 6,
          decoration: BoxDecoration(color: Colors.transparent),
          child: Text(
            // 'FEB\n 11',
            '  ${state.movieList[index].releaseDate!.split('-')[1]}\n  ${state.movieList[index].releaseDate!.split('-')[2]}\n${state.movieList[index].releaseDate!.split('-')[0]}',
            style: TextStyle(color: textColor, fontSize: 25),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width -
              MediaQuery.of(context).size.width / 6,
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width -
                    MediaQuery.of(context).size.width / 6,
                height: MediaQuery.of(context).size.height / 3.5,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            '$apiAppendUrl${state.movieList[index].posterPath}'))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(state.movieList[index].originalTitle ?? "fake",
                        style: TextStyle(
                          color: textColor,
                          fontSize: 25,
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.notification_add_outlined,
                            color: textColor,
                          ),
                          Text(
                            'Remind Me',
                            style: TextStyle(color: textColor),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: textColor,
                          ),
                          Text(
                            'Info',
                            style: TextStyle(color: textColor),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Text(
                state.movieList[index].title ?? "title not available",
                style: TextStyle(
                  fontSize: 20,
                  color: textColor,
                ),
                textAlign: TextAlign.start,
              ),
              Expanded(
                child: Text(
                  state.movieList[index].overview ?? "OverView not available",
                  style: TextStyle(color: textColor, fontSize: 16),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class TbpageTwo extends StatelessWidget {
  const TbpageTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<WatchingBloc>(context)
        .add(const WatchingEvent.intialized());

    return BlocBuilder<WatchingBloc, WatchingState>(
      builder: (context, state) {
        return ListView.separated(
            itemBuilder: ((context, index) {
              return SecondTabColumn(index, state.tvList);
            }),
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 10,
              );
            },
            itemCount: state.tvList.length);
      },
    );
  }

  Column SecondTabColumn(int index, List<Result> tvList) {
    return Column(
      children: [
        Text(
          tvList[index].name ?? "Name note Available",
          style: TextStyle(
              color: textColor, fontSize: 35, fontStyle: FontStyle.italic),
        ),
        Text(
          tvList[index].overview ?? "OverView not Available",
          style: TextStyle(color: textColor),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      '$apiAppendUrl${tvList[index].posterPath}'))),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tvList[index].originalName ?? "Original date not available",
              style: TextStyle(color: textColor, fontSize: 10),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Icon(Icons.share_location, color: textColor),
                    Text(
                      'Share',
                      style: TextStyle(
                        color: textColor,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.add, color: textColor),
                    Text(
                      'MyList',
                      style: TextStyle(
                        color: textColor,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.play_arrow, color: textColor),
                    Text(
                      'Play',
                      style: TextStyle(
                        color: textColor,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
