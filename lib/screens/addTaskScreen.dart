import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
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
          const TextField(
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: null,
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
