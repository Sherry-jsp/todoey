import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  String? newTaskTitle;
  final Function(dynamic) addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.blue,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText){
              newTaskTitle = newText;
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: (){
              addTaskCallback(newTaskTitle);
            },
            child: const Text(
              'Add',
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
