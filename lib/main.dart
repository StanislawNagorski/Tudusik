import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/screens/tasks_screen.dart';

import 'services/user_tasks_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserTasks>(
      create: (context) => UserTasks(),
      child: MaterialApp(
        home:  TasksScreen()
      ),
    );
  }
}

