import 'package:flutter/material.dart';
import 'package:to_do/task_tile.dart';
import 'package:to_do/tasks.dart';

class TasksList extends StatefulWidget {
  List<Task> tasks ;
  TasksList({this.tasks});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, intV) {
        return TaskTile(
          tasktile: widget.tasks[intV].taskname,
          isCheck: widget.tasks[intV].isDone,
          checkBoxCallBack: (value) {
            setState(() {
              widget.tasks[intV].isDone = value;
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
