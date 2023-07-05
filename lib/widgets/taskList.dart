import 'package:flutter/material.dart';
import 'taskTile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/taskData.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          itemBuilder: (context, index) {
            final taskItem = taskData.tasks[index];
            return TaskTile(
              isChecked: taskItem.isDone,
              taskTitle: taskItem.name,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(taskItem);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
