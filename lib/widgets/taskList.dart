import 'package:flutter/material.dart';
import 'taskTile.dart';

class TaskList extends StatelessWidget {
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