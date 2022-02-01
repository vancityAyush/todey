import 'package:flutter/material.dart';
import 'package:todey/models/tasks.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "name1"),
    Task(name: "name2"),
    Task(name: "name3"),
    Task(name: "name4"),
  ];

  void addTask(String title) {
    tasks.add(Task(name: title));
    notifyListeners();
  }

  int get taskCount => tasks.length;

  void delete(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }

  void toogleTask(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }

  Task getTask(int index) {
    return tasks[index];
  }
}
