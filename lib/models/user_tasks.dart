import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'Task.dart';

class UserTasks extends ChangeNotifier {
  List<Task> _list = [
    Task(name: 'Hello! Thx for using our App!'),
  ];

  UnmodifiableListView<Task> get list => UnmodifiableListView(_list);

  void addToList(Task newTask) {
    _list.add(newTask);
    notifyListeners();
  }

  int get numberOfTasks {
    return _list.length;
  }

  void checkTask(int index) {
    print(index);
    _list[index].toggleCheckBox();
    notifyListeners();
  }
}
