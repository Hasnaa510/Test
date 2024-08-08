import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData darkTheme =ThemeData(

  appBarTheme:  AppBarTheme(
      iconTheme: const IconThemeData(
        color: Colors.white,),
      backgroundColor:HexColor('333739'),
      elevation: 0.0,
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 25,),
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: HexColor('333739'),
          systemNavigationBarIconBrightness: Brightness.light
      )
  ),
  textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      )
  ),
  bottomNavigationBarTheme:  BottomNavigationBarThemeData(
    backgroundColor:HexColor('333739') ,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.deepOrange,
    unselectedItemColor: Colors.grey,
    elevation: 20.0,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.deepOrange,
  ),
  scaffoldBackgroundColor: HexColor('333739'),
  //bottomNavigationBarTheme:
);

ThemeData lightTheme =ThemeData(
  textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      )
  ),
  appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,),

      backgroundColor: Colors.white,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      )
  ),
  bottomNavigationBarTheme:  const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.deepOrange,
    elevation: 20.0,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.deepOrange,
  ),
);

