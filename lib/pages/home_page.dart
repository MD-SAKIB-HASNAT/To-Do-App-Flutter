import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todo_app/data/databse.dart';
import 'package:todo_app/util/dialog_box.dart';
import 'package:todo_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  //reference the hive box
  final _myBox = Hive.box('mybox');
  TodoDatabase db = TodoDatabase();
  @override
  void initState() {
     
    //if the box is empty, create initial data
    if (_myBox.get('TODOLIST') == null) {
     db.createInitialData();
    } else {
       db.loadData();
    }
    super.initState();
  }

  final _controller = TextEditingController();

  void saveNewTask() {
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    db.updateDatabase();
    Navigator.of(context).pop();
  }
  void createNewTask() {
    showDialog(context: context,
      builder: (context){
      return DialogBox(
        controller: _controller,
        onSave: saveNewTask,
        onCancel: () {
          Navigator.of(context).pop();
          _controller.clear();
        },
        );
    },
    );
  }
  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text('My Todo App'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        elevation: 0,

      ),

      floatingActionButton: FloatingActionButton(
        onPressed:createNewTask,
        backgroundColor: Colors.yellow,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index){
          return ToDoTile(
            taskName: db.toDoList[index][0], 
            taskCompleted: db.toDoList[index][1],
             onChanged: (value) {
              setState(() {
                db.toDoList[index][1] = value;
                
              });
              db.updateDatabase();
             },
             deleteFunction: (context) => deleteTask(index),
          );
        },

      )
    );
  }
}