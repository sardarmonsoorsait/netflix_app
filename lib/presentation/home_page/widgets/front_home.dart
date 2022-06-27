import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/home_page/widgets/app_bar_widget_with_image.dart';
import 'package:netflix_app/presentation/home_page/home_page.dart';

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
    return Stack(
      children: [
        Container(
          constraints: BoxConstraints(maxHeight: 600),
          // height: 800,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg'))),
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
