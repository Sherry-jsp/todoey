class Task {
  final String? name;
  late final bool isDone;

  Task({this.name, this.isDone = false});

  void toggleDone(){
    isDone = !isDone;
  }

}