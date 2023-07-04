import 'package:flutter/material.dart';
import 'taskTile.dart';
import 'package:todoey_app/models/task.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> task =[
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
      children: [
        TaskTile(),
        TaskTile()
      ],
    );
  }
}