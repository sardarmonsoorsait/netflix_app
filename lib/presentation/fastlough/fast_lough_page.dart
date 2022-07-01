import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/fast_lough/fastlough_bloc.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/fastlough/widgets/video_list_widget.dart';

class FastLough extends StatelessWidget {
  const FastLough({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastloughBloc>(context).add(const Intialize());
    });
    return BlocBuilder<FastloughBloc, FastloughState>(
      builder: (context, state) {
        final movielist = state.imagelist;
        return PageView(
            onPageChanged: (value) {},
            scrollDirection: Axis.vertical,
            children: List.generate(movielist.length, ((index) {
              return VideoListWidget(
                index: index,
                movielist: movielist,
              );
            })));
      },
    );
  }
}
