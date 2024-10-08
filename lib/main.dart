import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project1/layout/News_App/cubit/states.dart';
import 'package:flutter_project1/shared/block_observer.dart';
import 'package:flutter_project1/shared/network/local/shared_preferences.dart';
import 'package:flutter_project1/shared/network/remote/dio_helper.dart';
import 'package:flutter_project1/shared/styles/themes.dart';
import 'layout/News_App/cubit/cubit.dart';
import 'layout/Todo-App/todo_layout.dart';
import 'modules/basics_app/login/LoginScreen.dart';
import 'modules/basics_app/messages/Messages.dart';
import 'modules/basics_app/messenger/mess_screen.dart';
import 'modules/basics_app/registration/Registeration.dart';
import 'modules/basics_app/users/Users_screen.dart';
import 'modules/bmi_app/bmi/bmi_screen.dart';
import 'modules/bmi_app/bmi_result/bmi_result.dart';
import 'modules/counter_app/counter_screen.dart';
import 'modules/news_app/business/business_screen.dart';
import 'modules/news_app/science/science_screen.dart';
import 'modules/shop_app/onboarging/onboarding_screen.dart';
import 'modules/shop_app/register/register_screen.dart';


void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await DioHelper.init();
  await CacheHelper.init();

 bool? isDark =CacheHelper.getBoolean(key:'isDark' );


  runApp( MyApp(isDark!));
}

class MyApp extends StatelessWidget {

  final bool isDark;
  MyApp(this.isDark);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NewsCubit()..changeAppMode(
          fromShared: isDark,),
        ),
        BlocProvider(create: (context) => NewsCubit()..getBusiness(),),

      ],
        child: BlocConsumer<NewsCubit, NewsStates>(
            listener:(context, state) {},
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: lightTheme,
                darkTheme: darkTheme,
                themeMode: NewsCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
                home:  Directionality(
                  textDirection: TextDirection.ltr,
                  child: OnBoardingScreen(),
                ),
              );
            },
          )
    );
  }
}
