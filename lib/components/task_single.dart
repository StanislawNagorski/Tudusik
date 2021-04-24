import 'package:flutter/material.dart';
import 'package:to_do/models/Task.dart';

class SingleTask extends StatelessWidget {
  final Task task;

  SingleTask(this.task);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        task.name,
        style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            decoration: task.isCheck ? TextDecoration.lineThrough : null),
      ),
      value: task.isCheck,
      onChanged: (value) => task.toggleCheckBox(value),
    );
  }
}
