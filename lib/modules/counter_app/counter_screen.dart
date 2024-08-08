import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cibit/cubit.dart';
import 'cibit/stases.dart';


class CounterScreen extends StatelessWidget{
  const CounterScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context )=>CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (BuildContext context, state)
        {
          if(state is ConterMinusState)
          {
            print('state is minus state${state.counter}');
          }
          if(state is ConterPlusState)
          {
            print('state is plus state${state.counter}');
          }


        },
        builder: (BuildContext context, state)
        {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Counter"),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).minus();

                    },
                    child: const Text(
                      'MINUS',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      '${CounterCubit.get(context).counter}',
                      style: const TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).plus();
                    },
                    child: const Text(
                      'PLUS',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          );
        }

      ),
    );
  }
}
