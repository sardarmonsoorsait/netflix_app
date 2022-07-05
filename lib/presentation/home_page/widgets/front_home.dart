import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/downloads/downloads_bloc.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/presentation/home_page/widgets/app_bar_widget_with_image.dart';
import 'package:netflix_app/presentation/home_page/home_page.dart';

import '../../../application/home/home_bloc.dart';

ValueNotifier<String> dropdownNotifier = ValueNotifier(items[0]);
var items = [
  'Categories',
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
];

class FrontHome extends StatelessWidget {
  FrontHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<HomeBloc>(context).add(HomeEvent.started());
    });
    return Stack(
      children: [
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            final random = Random();
            if (state.movieresult.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Container(
                constraints: BoxConstraints(maxHeight: 600),
                // height: 800,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            '$apiAppendUrl2${state.movieresult[random.nextInt(state.movieresult.length)].posterPath}'))),
              );
            }
          },
        ),
        Positioned(
          bottom: 0,
          top: 550,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    'MyList',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              MaterialButton(
                onPressed: (() {}),
                child: Row(
                  children: [Icon(Icons.play_arrow), Text('Play')],
                ),
                color: Colors.white,
              ),
              Column(
                children: [
                  Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  Text(
                    'info',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
