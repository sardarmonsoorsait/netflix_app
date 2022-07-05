import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/home/home_bloc.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/domain/home/model/homeimage/result.dart';

class HomeListWidget extends StatelessWidget {
  const HomeListWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(color: textColor, fontSize: 25),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 6,
          //width: MediaQuery.of(context).size.width /6,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return HomeListContainer(
                index: index,
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 10,
              );
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

class HomeListContainer extends StatelessWidget {
  const HomeListContainer({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(HomeEvent.started());
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final random = Random();
        return Container(
          //constraints:BoxConstraints(minWidth: MediaQuery.of(context).size.width /5) ,
          height: 100,
          width: MediaQuery.of(context).size.width / 4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      '$apiAppendUrl2${state.movieresult[random.nextInt(state.movieresult.length)].posterPath}'))),
        );
      },
    );
  }
}
