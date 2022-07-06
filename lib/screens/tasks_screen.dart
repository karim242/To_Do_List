import 'package:flutter/material.dart';
import 'package:to_do/screens/add_task_screen.dart';
import 'package:to_do/task_list.dart';

import '../tasks.dart';
class TasksScreen extends StatefulWidget {


  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

  List<Task> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        children: [
          Container(
            //color: Colors.red,
            padding: EdgeInsets.only(top: 60, left: 30, bottom: 30, right: 30),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.lightBlueAccent,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30.0),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'To Do List',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  TasksList(tasks: tasks,),
                ],
              ),
              // color: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showBottomSheet(
            context: context,
            builder: (builderContext) {
              return AddTaskScreen((newtaskTitle){
                setState(() {
                  tasks.add(Task(taskname: newtaskTitle),);
                });
                Navigator.pop(context);
              });
            },
          );
        },
      ),
    );
  }
}
