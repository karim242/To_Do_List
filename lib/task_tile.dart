import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isCheck;
  String tasktile;
  Function checkBoxCallBack;
  TaskTile({this.isCheck,this.tasktile,this.checkBoxCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasktile,
        style: TextStyle(fontSize: 20),
      ),
      trailing: Checkbox(
        value: isCheck,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
