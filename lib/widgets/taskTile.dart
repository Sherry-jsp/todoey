import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is your task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
          checkBoxState: isChecked,
          toggleCheckBox: (bool? checkboxState) {
            setState(() {
              isChecked = checkboxState!;
            });
          }),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  late final bool checkBoxState;
  final Function(bool?) toggleCheckBox;

  TaskCheckBox({required this.checkBoxState, required this.toggleCheckBox});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckBox,
    );
  }
}
