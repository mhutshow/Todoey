import 'package:flutter/material.dart';
import 'package:todoey/Screens/wigets.dart';
import 'package:todoey/models/Task.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/TaskList.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: missing_return
    return Consumer<TaskList>(
      builder: (context , taskDataConsumer , child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return ListTask(
              taskDetail: taskDataConsumer.taskData[index].taskName,
              taskComplete: taskDataConsumer.taskData[index].taskStatus,
              checkBoxStatus :  (value) {
                taskDataConsumer.updateCheckBox(taskDataConsumer.taskData[index]);
              },
              onLongPress: (){
                taskDataConsumer.deleteTask(taskDataConsumer.taskData[index]);
              },
            );
          },
          itemCount: taskDataConsumer.getLength,
        );
      },
    );
  }
}
