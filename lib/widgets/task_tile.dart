import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String text;
  final void Function(bool?) checkBoxCallback;
  final void Function() longPressCallback;
  const TaskTile(
      {Key? key,
      required this.text,
      this.isChecked = false,
      required this.checkBoxCallback,
      required this.longPressCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueAccent,
        onChanged: checkBoxCallback,
        value: isChecked,
      ),
    );
  }
}
