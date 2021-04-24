import 'package:flutter/foundation.dart';

import 'Task.dart';

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
