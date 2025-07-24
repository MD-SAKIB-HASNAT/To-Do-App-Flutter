import 'package:hive/hive.dart';

class TodoDatabase {
  List toDoList = [];
  
  //reference the hive box
  final _myBox = Hive.box('mybox');

  //run this method when the app starts
  void createInitialData() {
    toDoList = [
      ['Welcome to your todo app!', false],
      ['Complete your first task', false],
    ];
  }

  //load the data from the database
  void loadData() {
    toDoList =  _myBox.get('TODOLIST');
  }

  //update the database
  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}