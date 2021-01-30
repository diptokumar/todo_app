import 'package:flutter/material.dart';
import 'package:todo_app/screen/addtask_screen.dart';
import 'package:todo_app/screen/myhome.dart';
import 'package:todo_app/screen/task_screen.dart';

import 'models/task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      color: Colors.blueAccent,
      home: MyHome(),
    );
  }
}
