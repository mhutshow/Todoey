import 'package:flutter/material.dart';

class ListTask extends StatelessWidget{
  ListTask({this.taskComplete, this.taskDetail, this.checkBoxStatus , this.onLongPress});
  final bool taskComplete;
  final String taskDetail;
  final Function checkBoxStatus;
  final Function onLongPress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress ,
      title: Text(
        taskDetail,
        style: TextStyle(
          decoration: taskComplete ? TextDecoration.lineThrough : null,
          color: taskComplete ? Colors.red : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: taskComplete,
        onChanged: checkBoxStatus,
      ),
    );
  }
}
