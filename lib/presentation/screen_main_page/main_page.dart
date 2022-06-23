import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/downloads/dowloads_page.dart';
import 'package:netflix_app/presentation/fastlough/fast_lough_page.dart';
import 'package:netflix_app/presentation/home_page/home_page.dart';
import 'package:netflix_app/presentation/new_hot/new_hot.dart';
import 'package:netflix_app/presentation/search/search_idle_page.dart';
import 'package:netflix_app/presentation/search/search_page.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  ValueNotifier<int> indexNotifier = ValueNotifier(0);
  List pages = [
    HomePage(),
    NewHot(),
    FastLough(),
    SearchPage(),
    DownlodsPage()
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ValueListenableBuilder(
        valueListenable: indexNotifier,
        builder: (BuildContext ctx, int value, _) {
          return SafeArea(
            child: pages[value],
          );
        }
      ),
      bottomNavigationBar: ValueListenableBuilder(
          valueListenable: indexNotifier,
          builder: (BuildContext ctx, int newIndex, _) {
            return BottomNavigationBar(
                currentIndex: newIndex,
                onTap: (newvalue) {
                  indexNotifier.value = newvalue;
                  
                },
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.grey,
                backgroundColor: Colors.black,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.new_releases), label: 'Hot&New'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.fastfood), label: 'FastLough'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: 'Search'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.download), label: 'Downloads'),
                ]);
          }),
    );
  }
}
