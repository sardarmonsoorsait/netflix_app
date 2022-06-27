import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_app/core/colors/colors.dart';

class AppBarWidgetWithImage extends StatelessWidget {
  const AppBarWidgetWithImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://www.freepnglogos.com/uploads/netflix-logo-app-png-16.png'))),
        ),
        Row(
          children: [
            const Icon(
              Icons.cast,
              color: textColor,
              size: 30,
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              height: 30,
              width: 30,
              color: Colors.blue,
            )
          ],
        ),
      ],
    );
  }
}
