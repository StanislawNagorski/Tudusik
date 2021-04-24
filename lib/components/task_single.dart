import 'package:flutter/material.dart';
import 'package:to_do/models/task.dart';

class SingleTask extends StatelessWidget {

  final Task task;
  final Function checkBoxCallBack;

  SingleTask({this.task, this.checkBoxCallBack});

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
      onChanged: (value) =>  checkBoxCallBack(value),
    );
  }
}
