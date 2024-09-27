import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  //List of tasks
  List todoList = [];
  //reference box
  final _myBox = Hive.box('myBox');

  //run this method if it is the first time opening this app
  void createInitialData() {
    todoList = [];
  }

  //load data from database
  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  //update database
  void updateDatabase() {
    _myBox.put("TODOLIST", todoList);
  }
}
