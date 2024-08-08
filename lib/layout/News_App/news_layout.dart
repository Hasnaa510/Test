import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project1/layout/News_App/cubit/cubit.dart';
import 'package:flutter_project1/layout/News_App/cubit/states.dart';

import '../../modules/news_app/search/search_screen.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = NewsCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text('News App'),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchScreen()),
                  );
                },
                icon: const Icon(Icons.search),
              ),
              IconButton(
                icon: const Icon(Icons.brightness_3_outlined),
                onPressed: () {
                  NewsCubit.get(context).changeAppMode();
                },
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: cubit.bottomItems,
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.newsBottomNavBarState(index);
            },
          ),
          body: cubit.screens[cubit.currentIndex],
        );
      },
    );
  }
}

//base url:   https://newsapi.org/
//method url:  v2/top-headlines?
//queries:      country=us&category=business&apiKey=5bced65a247e48e2973d37715907e4eb

//https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=5bced65a247e48e2973d37715907e4eb

//https://newsapi.org/v2/everything?q=tesla&apiKey=5bced65a247e48e2973d37715907e4eb
