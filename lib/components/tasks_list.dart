import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/components/task_single.dart';
import 'package:to_do/models/user_tasks.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserTasks>(builder: (context, taskData, child) {
      return ListView.builder(
          itemCount: taskData.getNumberOfTasks(),
          itemBuilder: (context, index) {
            return SingleTask(
              task: taskData.list[index],
              checkBoxCallBack: (bool value) {
                taskData.checkTask(index);
              },
            );
          });
    });
  }
}
