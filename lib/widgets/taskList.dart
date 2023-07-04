import 'package:flutter/material.dart';
import 'taskTile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/taskData.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.task[index].isDone,
              taskTitle: taskData.task[index].name,
              checkboxCallback: (checkboxState) {
                // if (checkboxState != null) {
                //   // setState(() {
                //   //     widget.task[index].isDone = checkboxState;
                //   //   },
                //   // );
                // }
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
