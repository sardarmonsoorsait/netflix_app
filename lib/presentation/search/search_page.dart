import 'package:flutter/material.dart';

import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/domain/search/model/search_response/search_response.dart';
import 'package:netflix_app/presentation/search/widgets/search_head.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchHead(head: 'Movies & TV'),
        kwidth,
      ],
    );
  }
}

class TopSearchWidget extends StatelessWidget {
  const TopSearchWidget({Key? key, required this.movielist}) : super(key: key);
  final List<SearchResultData> movielist;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      childAspectRatio: 1 / 1.4,
      children: List.generate(movielist.length, (index) {
        return SearchWidget(
          moviePath: movielist[index].posterPath,
        );
      }),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key, required this.moviePath}) : super(key: key);
  final moviePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      //constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height*0.3,minWidth: MediaQuery.of(context).size.width*0.3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.deepOrange,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('$apiAppendUrl$moviePath'))),
    );
  }
}
