import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'task_list.dart';
class AddTaskScreen extends StatefulWidget {
  Function call;
  AddTaskScreen(this.call);
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String value;



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent
            ),),
            TextField(
              onChanged: (val){
                print(val);
                value = val;
              },
              autofocus: true,
              textAlign: TextAlign.center,

            ),
            FlatButton(
              onPressed: (){
                  widget.call(value);

                },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.blueAccent),
              ),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
