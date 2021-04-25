import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:to_do/services/database_service.dart';

import 'task.dart';

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
    _list.add(newTask);
    
    int index = await DatabaseService.instance.insert(newTask.toMap());
    print('inserted id is $index');
    
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

  void removeTask(int index){
    _list.removeAt(index);
    notifyListeners();
  }
}
