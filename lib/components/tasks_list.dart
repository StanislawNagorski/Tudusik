import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/components/task_single.dart';
import 'package:to_do/models/task.dart';
import 'package:to_do/models/user_tasks.dart';
import 'package:to_do/services/database_service.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List>(
      future: DatabaseService.instance.getAll(),
      initialData: [],
      builder: (context, snapshot) {
        return snapshot.hasData ?
             ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  final rowFromDb = snapshot.data[index];
                  
                  return GestureDetector(
                   // onLongPress: () => taskData.removeTask(index),
                    child: SingleTask(
                      task: Task.fromMap(rowFromDb),
                      checkBoxCallBack: (bool value) {
                       // taskData.checkTask(index);
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
