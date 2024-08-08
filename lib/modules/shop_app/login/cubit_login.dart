import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project1/modules/shop_app/login/states_login.dart';
import 'package:flutter_project1/shared/network/remote/dio_helper.dart';

import '../../../shared/network/end_point.dart';


class ShopLoginCubit extends Cubit<ShopLoginStates>{
  ShopLoginCubit(): super (ShopLoginInitialState());

  static ShopLoginCubit get(context) => BlocProvider.of(context);

  void userLogin(
      {
      required String email ,
      required String password,
  })
  {
      DioHelper.postData(
          url: LOGIN,
          lang: 'ar',
          data: {
            'email': email,
            'password': password,
            'lang' : 'en',
          }).then((value){
            print(value?.data['message']);
            emit(ShopLoginSuccessState());
      });
  }


    Icon suffix =const Icon(Icons.visibility);
    bool isPassword =true;
  void changePasswordVisibility(){
         isPassword=!isPassword;
         suffix = isPassword?const Icon(Icons.visibility) :const  Icon(Icons.visibility_off);

         emit(ChangePasswordVisibility());
  }

}
