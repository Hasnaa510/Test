import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project1/modules/counter_app/counter2/states2.dart';

import 'cubit2.dart';

class CtrScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => CtrCubit(),
      child: BlocConsumer<CtrCubit, CtrStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return  Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: ()
                  {
                    CtrCubit.get(context).minus();
                  }, child:const Text('MINUS',
                      style:  TextStyle(
                        fontSize: 25,
                      )
                  )),
                  Text('${CtrCubit.get(context).ctr}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      )),
                  TextButton(onPressed: ()
                  {
                    CtrCubit.get(context).plus();
                  }, child: const Text('PLUS',
                      style:  TextStyle(
                        fontSize: 25,
                      ))),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
