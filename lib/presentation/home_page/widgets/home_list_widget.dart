import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_app/core/colors/colors.dart';

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
              return HomeListContainer();
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
  const HomeListContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/zzXFM4FKDG7l1ufrAkwQYv2xvnh.jpg'))),
    );
  }
}
