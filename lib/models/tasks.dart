class Task {
  final String name;
  bool isDone;
  Task({required this.name, this.isDone = false});
  void toggleDone() {
    isDone = !isDone;
  }

  @override
  String toString() {
    return name;
  }
}
