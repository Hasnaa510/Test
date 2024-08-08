import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project1/modules/NewsApp2/science.dart';
import 'package:flutter_project1/modules/NewsApp2/sports.dart';

import 'Dioo.dart';
import 'bussiness.dart';
import 'new.state.dart';

class News2Cubit extends Cubit<News2States>
{
  News2Cubit() : super (NewsInitialState());

  News2Cubit get(context) => BlocProvider.of(context);


  int  currentIndex =0;

  List<BottomNavigationBarItem> items= const[
    BottomNavigationBarItem(
        icon:Icon(Icons.business),
        label: 'Business'),
    BottomNavigationBarItem(
        icon:Icon(Icons.sports),
        label: 'Sports'),
    BottomNavigationBarItem(
        icon:Icon(Icons.science),
        label: 'Science'),
  ];
  List <Widget> screens=
  const [
    Sports2(),
    Business2(),
    Science2(),
  ];

  void changeBottNavBar(int index)
  {
    currentIndex= index;
    emit(NewsBottomNavBarState());
  }

  List<dynamic> business =[];
  void getBusinessData(){
    emit(NewsGetBusinessLoadingState());
    DioHelpler2.getData(
        url: 'v2/top-headlines',
        query: {
          'country': 'us',
          'category': 'business',
          'apiKey': '5bced65a247e48e2973d37715907e4eb',
        }).then((value) {
      business = value?.data['articles'];
      emit(NewsGetBusinessSuccessState());
    });
  }


}