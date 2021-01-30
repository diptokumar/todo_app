import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget{
    final String taskTitle;
   final bool isChecked ;
    final Function checkboxCallback;
  const TaskTile({ this.taskTitle, this.isChecked, this.checkboxCallback});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.yellowAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      )
    );
  }
}

