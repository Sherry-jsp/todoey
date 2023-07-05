import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/taskData.dart';

class AddTaskScreen extends StatelessWidget {
  late String newTaskTitle;
  AddTaskScreen({super.key});

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
              Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
              Navigator.pop(context);
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
