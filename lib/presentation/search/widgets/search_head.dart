import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/search/search/search_bloc.dart';

import 'package:netflix_app/core/colors/colors.dart';

class SearchHead extends StatelessWidget {
  const SearchHead({Key? key, required this.head}) : super(key: key);
  final String head;
  @override
  Widget build(BuildContext context) {
    //  WidgetsBinding.instance.addPostFrameCallback((_) {
    //  BlocProvider.of<SearchBloc>(context).add(  SearchMovie(movieQuery:value));
    //  });
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoSearchTextField(
            onChanged: (value) {
               BlocProvider.of<SearchBloc>(context).add(  SearchMovie(movieQuery:value));
            },
            backgroundColor: Colors.grey.withOpacity(0.5),
            style:const TextStyle(color: Colors.white),
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
            style:const TextStyle(color: textColor, fontSize: 25),
          ),
        ]);
  }
}
