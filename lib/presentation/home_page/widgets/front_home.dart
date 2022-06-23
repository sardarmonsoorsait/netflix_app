import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FrontHome extends StatelessWidget {
  const FrontHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 600),
    // height: 800,
      decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: NetworkImage('https://www.themoviedb.org/t/p/w300_and_h450_bestv2/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg'))),
    );
  }
}
