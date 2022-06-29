import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/search/search/search_bloc.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/search/widgets/search_head.dart';

import '../../core/strings.dart';

class SearchIdlePage extends StatelessWidget {
  const SearchIdlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
     BlocProvider.of<SearchBloc>(context).add( const Intialize());
    });
    return Column(
      children: [
      const  SearchHead(
          head: 'Top Searches',
        ),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('An error Occured'),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text('Lst is empty'),
                );
              }
              return ListView.separated(
                  itemBuilder: ((context, index) {
                    final movie = state.idleList[index];
                    return SearchListWidget(
                        title: movie.title?? 'no title provider',
                        imageUrl:'$apiAppendUrl${ movie.posterPath}');
                  }),
                  separatorBuilder: (ctx, index) =>const SizedBox(height: 10),
                  itemCount: state.idleList.length);
            },
          ),
        )
      ],
    );
  }
}

class SearchListWidget extends StatelessWidget {
  const SearchListWidget(
      {Key? key, required this.title, required this.imageUrl})
      : super(key: key);
  final String title;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          //color: Colors.amberAccent,
          height:75,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  fit: BoxFit.fill, image: NetworkImage(imageUrl))),
        ),
         Expanded(
           child: Text(
              title,
              style:const TextStyle(color: textColor),
            ),
         ),
       const Icon(
          CupertinoIcons.play_circle,
          color: textColor,
          size: 40,
        )
      ],
    );
  }
}
