import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/screen/addtask_screen.dart';

import 'package:todo_app/screen/task_screen.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<Task> tasks = [
    Task(name: 'Hello'),
    Task(name: 'Egg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen((val){
              setState(() {
                tasks.add(Task(name: val));
              });
              Navigator.pop(context);
            }));
        },
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add),
      ),
      body: TaskScreen(tasks),
      backgroundColor: Colors.blue,
    );
  }
}
