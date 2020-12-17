import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/Task.dart';
import 'dart:collection';
import 'package:shared_preferences/shared_preferences.dart';

class TaskList extends ChangeNotifier{
  List<Task> _tasks = [
    // Task(taskName: 'I have a new work to do', taskStatus: true),
    // Task(taskName: 'I have a new work to do', taskStatus: true),
  ];
  int get getLength{
    return _tasks.length;
  }

  UnmodifiableListView<Task> get taskData{
    return UnmodifiableListView(_tasks);
  }

  void addTask(String taskName){
    _tasks.add(Task(taskName: taskName , taskStatus: false));
    notifyListeners();
  }
  void updateCheckBox(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}
