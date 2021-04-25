import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/components/task_single.dart';
import 'package:to_do/models/task.dart';
import 'package:to_do/services/user_tasks_controller.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserTasks data = UserTasks();
    
    return FutureBuilder<List>(
      future: data.tasksFromDb,
      initialData: [],
      builder: (context, snapshot) {
        return snapshot.hasData ?
             ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  Task currentTask = snapshot.data[index];
                  return GestureDetector(
                    onLongPress: () => Provider.of<UserTasks>(context, listen: false).removeTask(currentTask.id),
                    child: SingleTask(
                      task: currentTask,
                      checkBoxCallBack: (bool value) {
                        Provider.of<UserTasks>(context, listen: false).checkTask(currentTask);
                      },
                    ),
                  );
                })
            : Center(
                child: CircularProgressIndicator(),
              );
      },
    );
  }
}

// return Consumer<UserTasks>(builder: (context, taskData, child) {
// return ListView.builder(
// itemCount: taskData.numberOfTasks,
// itemBuilder: (context, index) {
// return GestureDetector(
// onLongPress: () => taskData.removeTask(index),
// child: SingleTask(
// task: taskData.list[index],
// checkBoxCallBack: (bool value) {
// taskData.checkTask(index);
// },
// ),
// );
// });
// });
