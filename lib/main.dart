import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/downloads/downloads_bloc.dart';
import 'package:netflix_app/application/home/home_bloc.dart';
import 'package:netflix_app/application/newhot/newhot_bloc.dart';
import 'package:netflix_app/application/watching/bloc/watching_bloc.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/domain/core/di/injectable.dart';
import 'package:netflix_app/presentation/new_hot/new_hot.dart';

import 'application/search/search/search_bloc.dart';
import 'presentation/screen_main_page/main_page.dart';
import 'application/fast_lough/fastlough_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injectConfiguration();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getit<DownloadsBloc>()),
        BlocProvider(create: (ctx) => getit<SearchBloc>()),
        BlocProvider(create: (ctx) => getit<FastloughBloc>()),
        BlocProvider(create: (ctx) => getit<NewhotBloc>()),
        BlocProvider(create: (ctx) => getit<WatchingBloc>()),
        BlocProvider(create: (ctx) => getit<HomeBloc>()),
      ],
      child: MaterialApp(
        title: 'Netflix',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainPage(),
      ),
    );
  }
}
