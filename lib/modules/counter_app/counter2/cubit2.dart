import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project1/modules/counter_app/counter2/states2.dart';

class CtrCubit extends Cubit<CtrStates>{
  CtrCubit() : super(CtrInitialState());

  static CtrCubit get(context) =>BlocProvider.of(context);


  int ctr = 1;
   void minus()
   {
      ctr--;
     emit(CtrMinusState());
   }
  void plus()
  {
    ctr++;
    emit(CtrPlusState());
  }
}