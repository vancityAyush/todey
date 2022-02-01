import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey/provider/task_provider.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final TaskProvider provider = Provider.of<TaskProvider>(context);
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _controller,
              autofocus: true,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              child: const Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                provider.addTask(_controller.text);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Task Added Successfully"),
                  ),
                );
                Navigator.pop(context);
              },
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
