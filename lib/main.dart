import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/screens/tasks_screen.dart';

import 'models/Task.dart';

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

class UserTasks extends ChangeNotifier {
  List<Task> _list = [
    Task(name: 'Hello! Thx for using our App!'),
  ];

  List<Task> get list => _list;

  void addToList(Task newTask){
    _list.add(newTask);
    notifyListeners();
  }

  int getNumberOfTasks(){
    return _list.length;
  }
}
