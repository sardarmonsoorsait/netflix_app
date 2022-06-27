import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/search/search/search_bloc.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/search/widgets/search_head.dart';

class SearchIdlePage extends StatelessWidget {
  const SearchIdlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(Intialize());
    });
    return Column(
      children: [
        SearchHead(
          head: 'Top Searches',
        ),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return Center(
                  child: Text('An error Occured'),
                );
              } else if (state.idleList.isEmpty) {
                return Center(
                  child: Text('Lst is empty'),
                );
              }
              return ListView.separated(
                  itemBuilder: ((context, index) {
                    final movie = state.idleList[index]
                    return SearchListWidget(title: movie., imageUrl: movie.posterPath??'');
                  }),
                  separatorBuilder: (ctx, index) => SizedBox(height: 10),
                  itemCount: state.idleList.length);
            },
          ),
        )
      ],
    );
  }
}

class SearchListWidget extends StatelessWidget {
  const SearchListWidget({Key? key,required this.title,required this.imageUrl}) : super(key: key);
  final String title;
  final String imageUrl;
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
                          imageUrl))),
            ),
            Text(
              title,
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
