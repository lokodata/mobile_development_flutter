import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference the box
  final _myBox = Hive.box('todoBox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ['Review for Exams', false],
      ['Finish my Assignments', false]
    ];
  }

  // load the data from the database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  // update the database
  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
