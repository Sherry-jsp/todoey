import 'package:flutter/material.dart';
import 'taskTile.dart';
import 'package:todoey_app/models/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> task = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: task[index].isDone,
            taskTitle: task[index].name,
            checkboxCallback: (checkboxState) {
              if (checkboxState != null) {
                setState(() {
                    task[index].isDone = checkboxState;
                  },
                );
              }
            });
      },
      itemCount: task.length,
    );
  }
}
