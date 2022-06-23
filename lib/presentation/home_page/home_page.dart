import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/home_page/widgets/front_home.dart';
import 'package:netflix_app/presentation/home_page/widgets/home_list_w_num.dart';
import 'package:netflix_app/presentation/home_page/widgets/home_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FrontHome(),
          HomeListWidget(text: 'Released in the past year'),
           HomeListWidget(text: 'Trending Now'),
            HomeListWidget(text: 'Top 10 TV Shows in This Week'),
             HomeListWnum(text: 'Released in the past year'),
              HomeListWidget(text: 'Released in the past year'),
        ],
      ),
    );
   
  }
}
