import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/components/task_single.dart';
import 'package:to_do/models/Task.dart';
import 'package:to_do/models/user_tasks.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    List<Task> taskList = Provider.of<UserTasks>(context).list;

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
