import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:netflix_app/core/colors/colors.dart';

class SearchHead extends StatelessWidget {
  const SearchHead({Key? key, required this.head}) : super(key: key);
  final String head;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoSearchTextField(
            backgroundColor: Colors.grey.withOpacity(0.5),
            style: TextStyle(color: Colors.white),
            prefixIcon: const Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
            suffixIcon: const Icon(
              CupertinoIcons.xmark,
              color: Colors.grey,
            ),
          ),
          kwidth,
          Text(
            head,
            style: TextStyle(color: textColor, fontSize: 25),
          ),
        ]);
  }
}
