import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project1/shared/cubit/states.dart';
import 'package:sqflite/sqflite.dart';

import '../../modules/todo_app/archived_tasks/archived_tasks/archived_tasks_screen.dart';
import '../../modules/todo_app/done_tasks/done_tasks_screen.dart';
import '../../modules/todo_app/new_tasks/new_tasks_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  late Database database;
  List<Map> newTasks = [];
  List<Map> doneTasks = [];
  List<Map> archivedTasks = [];

  List<String> titles = ['New Tasks', 'Done Tasks', 'Archived Tasks'];
  List<Widget> screens = const [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];

  void changeIndex(index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

  void createDatabase() async {
    return openDatabase('todo.db', version: 1, onCreate: (database, version) {
      print('database created');
      database
          .execute(
              'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT )')
          .then((value) {
        print('table created');
      });
    }, onOpen: (database) {
      getDataFromDatabase(database);
      print('database opened');
    }).then((value) {
      database = value;
      emit(AppCreateDatabaseState());
    });
  }

  insertToDatabase({
    required String title,
    required String date,
    required String time,
  }) async {
    await database.transaction((txn) {
      txn
          .rawInsert(
              'INSERT INTO tasks(title, date, time ,status) VALUES("$title", "$date", "$time","new")')
          .then((value) {
        print('$value Inserted Successfully');
        emit(AppInsertDatabaseState());

        getDataFromDatabase(database);
      });
      return Future(() => null);
    });
  }

void getDataFromDatabase(database){
    database.rawQuery('SELECT * FROM tasks',
    ).then((value) {

      value.forEach((element){
        if(element['status']=='new'){
          newTasks.add(element);
        }
        else if(element['status']=='done'){
          doneTasks.add(element);
        }
        else {
          archivedTasks.add(element);
        }
      });

      emit(AppGetDatabaseState());
    });
  }

  bool isBottomSheetShow = false;
  IconData icon = Icons.add;

  void changeBottomSheetState({
    required bool isShow,
    required IconData ficon,
  }) {
    isBottomSheetShow = isShow;
    icon = ficon;

    emit(AppChangeBottomSheetState());
  }

  void updateData(
  {
    required String status,
    required  int id,
}
      )async
  {
    database.rawUpdate(
        'UPDATE tasks SET status = ?  WHERE id = ?',
        [status, id]
    ).then((value){

      getDataFromDatabase(database);
      emit(AppUbdateDatabaseState());
    });
  }


  void deleteData(
      {
        required  int id,
      }
      )async
  {
    database.rawDelete(
        'DELETE FROM tasks WHERE id = ? ', [id]
    ).then((value){

      getDataFromDatabase(database);
      emit(AppDeleteDatabaseState());
    });
  }
}
