import "package:flutter/material.dart";
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/model/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCounter,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              isChecked: task.isDone,
              text: task.name,
              taskOnchanged: (cbState) {
                taskData.updateTask(task);
              },
              taskOnLongpressed: (){
                taskData.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
