import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_app/core/colors/colors.dart';

class NewHot extends StatelessWidget {
  const NewHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text("This is Hot and New page",style: TextStyle(color: Colors.amber),
    );
  }
}
