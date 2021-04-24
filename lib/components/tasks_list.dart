import 'package:flutter/material.dart';
import 'package:to_do/components/task_single.dart';
import 'package:to_do/models/Task.dart';

class TasksList extends StatefulWidget {
  List<Task> taskList;

  TasksList({this.taskList});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    List<Task> taskList = widget.taskList;
    return ListView.builder(
      itemCount: taskList.length,
      itemBuilder: (context, index) {
        return SingleTask(
          task: taskList[index],
          checkBoxCallBack: (bool value) {
            setState(() {
              taskList[index].toggleCheckBox();
            });
          },
        );
      },
    );
  }
}
