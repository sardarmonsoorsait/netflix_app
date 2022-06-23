import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/search/widgets/search_head.dart';

class SearchIdlePage extends StatelessWidget {
  const SearchIdlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [SearchHead(head: 'Top Searches',),
        Expanded(
          child: ListView.separated(
              itemBuilder: ((context, index) {
                return SearchListWidget();
              }),
              separatorBuilder: (ctx, index) => SizedBox(height: 10),
              itemCount: 10),
        )
      ],
    );
  }
}

class SearchListWidget extends StatelessWidget {
  const SearchListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              //color: Colors.amberAccent,
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://image.tmdb.org/t/p/w780/bOGkgRGdhrBYJSLpXaxhXVstddV.jpg'))),
            ),
            Text(
              'Film Title',
              style: TextStyle(color: textColor),
            ),
          ],
        ),
        Icon(
          CupertinoIcons.play_circle,
          color: textColor,
          size: 40,
        )
      ],
    );
  }
}
