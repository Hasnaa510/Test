import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'new.state.dart';
import 'news.cubit.dart';

class NewsApp2 extends StatelessWidget {
  const NewsApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => News2Cubit()..getBusinessData(),
      child: BlocConsumer<News2Cubit, News2States >(
        listener: (context, state) {},
        builder: (context, state) {

          var cubit = News2Cubit().get(context);

          return  Scaffold(
            appBar: AppBar(
              backgroundColor: Colors. green,
            ),
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.green,
              currentIndex:cubit.currentIndex,
              items: cubit.items,
              onTap: (index)
              {
                cubit.changeBottNavBar(index);
              },
            ),
            body: cubit.screens[cubit.currentIndex],
          );
        },
      ),
    );
  }
}
