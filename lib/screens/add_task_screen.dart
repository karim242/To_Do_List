import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  String newTaskTitle;
  final Function addTaskCallBack;
  AddTaskScreen(this.addTaskCallBack);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: [
            Text(
              'ADD Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle=newText;
              },
            ),
            TextButton(
              onPressed: () {
                addTaskCallBack(newTaskTitle);
              },
              child: Text('ADD'),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightBlue),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20))),
            )
          ],
        ),
      ),
    );
  }
}
