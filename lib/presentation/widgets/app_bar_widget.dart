import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_app/core/colors/colors.dart';

class AppBarWidget extends StatelessWidget  {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
     const   Text(
          'Downloads',
          style: TextStyle(color: textColor,fontSize: 30,backgroundColor: backgroundColor), ),
        Row(
          children: [
            const  Icon(Icons.cast,color: textColor,size: 30,),SizedBox(width: 30,),Container(height: 30,width: 30,color: Colors.blue,)
          ],
        ),
        

      ],
    );
  }

 
}
