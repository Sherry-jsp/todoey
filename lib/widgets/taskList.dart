import 'package:flutter/material.dart';
import 'taskTile.dart';
import 'package:todoey_app/models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> task;
  TaskList(this.task);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: widget.task[index].isDone,
            taskTitle: widget.task[index].name,
            checkboxCallback: (checkboxState) {
              if (checkboxState != null) {
                setState(() {
                    widget.task[index].isDone = checkboxState;
                  },
                );
              }
            });
      },
      itemCount: widget.task.length,
    );
  }
}
