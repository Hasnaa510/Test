import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project1/shared/cubit/states.dart';
import 'package:intl/intl.dart';
import '../../shared/cubit/cubit.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);


  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {} ,
        builder:(context, state)
        {
          AppCubit cubit =AppCubit.get(context);
          return  Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              title: Text(cubit.titles[cubit.currentIndex]),
            ),
            body:cubit.screens[cubit.currentIndex],
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (cubit.isBottomSheetShow) {
                  if (formKey.currentState!.validate()) {
                   cubit.insertToDatabase(
                      title: titleController.text,
                      date: dateController.text,
                      time:timeController.text ,
                    ).then((value)
                    {
                      Navigator.pop(context);

                    });
                  }
                } else {
                  scaffoldKey.currentState?.showBottomSheet(
                    elevation: 40.0,
                        (context) => Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Form(
                          key: formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextFormField(
                                keyboardType: TextInputType.text,
                                controller: titleController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "title must be not empty";
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text('Task Title'),
                                  prefixIcon: Icon(Icons.title),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                controller: timeController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "time must be not empty";
                                  }
                                },
                                onTap: () {
                                  showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now(),
                                  ).then((value) {
                                    timeController.text = value!.format(context);
                                  });
                                },
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text('Task Time'),
                                  prefixIcon: Icon(Icons.watch_later_outlined),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                controller: dateController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "date must be not empty";
                                  }
                                },
                                onTap: () {
                                  showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime.now(),
                                      lastDate: DateTime.parse('2023-05-03'))
                                      .then((value) {
                                    dateController.text=DateFormat.yMMMd().format(value!);

                                  });
                                },
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text('Date Time'),
                                  prefixIcon: Icon(Icons.date_range),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ).closed.then((value)
                  {
                   cubit.changeBottomSheetState(
                       isShow: false,
                       ficon: Icons.edit);
                  });
                  cubit.changeBottomSheetState(
                      isShow: true,
                      ficon: Icons.add);
                }
              },
              child: Icon(cubit.icon),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (int index) {
                cubit.changeIndex(index);
              },
              items: const [
                BottomNavigationBarItem(
                  label: 'Tasks',
                  icon: Icon(Icons.menu),
                ),
                BottomNavigationBarItem(
                    label: 'Done', icon: Icon(Icons.check_circle_outline)),
                BottomNavigationBarItem(
                    label: 'Archived', icon: Icon(Icons.archive_outlined))
              ],
            ),
          );
        },
      ),
    );
  }

}


