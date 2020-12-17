import 'package:flutter/material.dart';

class Task{
  String taskName;
  bool taskStatus;
  Task({@required this.taskName, this.taskStatus });

  Task.fromMap(Map map):
        this.taskName = map ['taskName'],
        this.taskStatus= map['taskStatus'];
  Map toMap(){
    return{
    'taskName':this.taskName,
    'taskStatus': this.taskStatus
    };
  }

  void toggleDone(){
    taskStatus=!taskStatus;
  }
}