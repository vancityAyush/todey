import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey/provider/task_provider.dart';
import 'package:todey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskProvider, child) => ListView.builder(
        itemBuilder: (context, index) {
          final currentTask = taskProvider.getTask(index);
          return TaskTile(
            text: currentTask.name,
            isChecked: currentTask.isDone,
            checkBoxCallback: (flag) {
              taskProvider.toogleTask(index);
            },
            longPressCallback: () => taskProvider.delete(index),
          );
        },
        itemCount: taskProvider.taskCount,
      ),
    );
  }
}
