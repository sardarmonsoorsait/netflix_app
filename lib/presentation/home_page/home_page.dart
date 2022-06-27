import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/home_page/widgets/front_home.dart';
import 'package:netflix_app/presentation/home_page/widgets/home_list_w_num.dart';
import 'package:netflix_app/presentation/home_page/widgets/home_list_widget.dart';

import 'widgets/app_bar_widget_with_image.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        child: AppBarWidgetWithImage(),
        preferredSize: Size.fromHeight(100),
      ),
      body: Stack(
        children: [
          NotificationListener<UserScrollNotification>(
            onNotification: ((notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else {
                scrollNotifier.value = true;
              }

              return true;
            }),
            child: SingleChildScrollView(
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
            ),
          ),
          ValueListenableBuilder(
              valueListenable: scrollNotifier,
              builder: (BuildContext context, bool value, _) {
                return value ? HideHeaderRow(dropdownNotifier) : Container();
              })
        ],
      ),
    );
  }

  Padding HideHeaderRow(ValueNotifier<String> dropdownNotifier) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'TV Shows',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Movies',
            style: TextStyle(color: Colors.white),
          ),
          ValueListenableBuilder(
            valueListenable: dropdownNotifier,
            builder: (BuildContext ctx, String val, _) {
              return (DropdownButton(
                  dropdownColor: backgroundColor,
                  hint: Text('Select A Category'),
                  value: dropdownNotifier.value,
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: TextStyle(color: textColor),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    dropdownNotifier.value = value!;
                  }));
            },
          )
        ],
      ),
    );
  }
}
