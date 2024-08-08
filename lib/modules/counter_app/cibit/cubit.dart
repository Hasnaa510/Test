import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project1/modules/counter_app/cibit/stases.dart';

class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit(): super(CounterInitialState());

  static CounterCubit get(context)=> BlocProvider.of(context);

  int counter =1;

  void minus()
  {
    counter--;
    emit(ConterMinusState(counter));
  }
  void plus()
  {
    counter++;
    emit(ConterPlusState(counter));
  }


}