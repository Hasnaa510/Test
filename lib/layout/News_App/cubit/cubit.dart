import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project1/layout/News_App/cubit/states.dart';
import '../../../modules/news_app/business/business_screen.dart';
import '../../../modules/news_app/science/science_screen.dart';
import '../../../modules/news_app/sports/sports_screen.dart';
import '../../../shared/network/local/shared_preferences.dart';
import '../../../shared/network/remote/dio_helper.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.business,
      ),
      label: 'Business',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.sports,
      ),
      label: 'Sports',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.science,
      ),
      label: 'Science',
    ),
  ];
  List<Widget> screens = const [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
  ];

  void newsBottomNavBarState(
    index,
  ) {
    currentIndex = index;
    if (index == 0) {
      getBusiness();
    }
    if (index == 1) {
      getSports();
    }
    if (index == 2) {
      getScience();
    }
    emit(NewsBottomNavBarState());
  }

  List<dynamic> business = [];
  void getBusiness() {
    emit(NewsGetBusinessLoadingState());

    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country': 'us',
        'category': 'business',
        'apiKey': '5bced65a247e48e2973d37715907e4eb',
      },
    ).then((value) {
      emit(NewsGetBusinessSuccessState());
      business = value?.data['articles'];
      print(business[0]['source'].toString());
    });
  }

  List<dynamic> sports = [];
  void getSports() {
    emit(NewsGetSportsLoadingState());

    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country': 'us',
        'category': 'sports',
        'apiKey': '5bced65a247e48e2973d37715907e4eb',
      },
    ).then((value) {
      emit(NewsGetSportsSuccessState());
      sports = value?.data['articles'];
      print(sports[0]['source'].toString());
    });
  }

  List<dynamic> science = [];
  void getScience() {
    emit(NewsGetSportsLoadingState());

    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country': 'us',
        'category': 'science',
        'apiKey': '5bced65a247e48e2973d37715907e4eb',
      },
    ).then((value) {
      emit(NewsGetScienceSuccessState());
      science = value?.data['articles'];
      print(science[0]['source'].toString());
    });
  }

  List<dynamic> search = [];
////https://newsapi.org/v2/everything?q=tesla&apiKey=5bced65a247e48e2973d37715907e4eb
  void getSearch(String value) {
    emit(NewsGetSearchLoadingState());

    DioHelper.getData(
      url: 'v2/everything',
      query: {
        'q': value,
        'apiKey': '5bced65a247e48e2973d37715907e4eb',
      },
    ).then((value) {
      emit(NewsGetSearchSuccessState());
      search = value?.data['articles'];
      print(search[0]['source'].toString());
    });
  }

  bool isDark = false;
  void changeAppMode({bool? fromShared}) {
    if (fromShared != null) {
      isDark = fromShared;
    } else {
      isDark = !isDark;
      CacheHelper.putBoolean(key: 'isDark', value: isDark).then((value) {
        emit(NewsModelState());
      });
    }
  }
}
