import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:to_do/services/database_service.dart';

import '../models/task.dart';

class UserTasks extends ChangeNotifier {

  List<Task> _list = [];

  Future<List<Task>> get tasksFromDb async{
    List<Map<String, dynamic>> tasksJson = await DatabaseService.instance.getAll();
    return tasksJson
        .map((singleRowFromDB) => Task.fromMap(singleRowFromDB))
        .toList(growable: true);
  }

  UnmodifiableListView<Task> get list => UnmodifiableListView(_list);

  Future<void> addToList(Task newTask) async {
   await DatabaseService.instance.insert(newTask.toMap());
    notifyListeners();
  }

  int get numberOfTasks {
    return _list.length;
  }

  void checkTask(Task task) async{
    task.toggleCheckBox();
    await DatabaseService.instance.update(task.toMap());
    notifyListeners();
  }

  void removeTask(int index) async{
    await DatabaseService.instance.delete(index);
    notifyListeners();
  }
}
