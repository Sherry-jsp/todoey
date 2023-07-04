
import 'package:flutter/foundation.dart';
import 'package:todoey_app/models/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> task = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get taskCount {
    return task.length;
  }
}