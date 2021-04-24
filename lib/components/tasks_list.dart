import 'package:flutter/material.dart';
import 'package:to_do/components/task_single.dart';
import 'package:to_do/models/Task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> taskList = [Task(name: 'Dodaj funkce'), Task(name: 'Zrób trening'), Task(name: 'Zjedz kebaba')];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20.0),
      children: [
        SingleTask(),
        SingleTask(),
        SingleTask(),
        SingleTask(),
        SingleTask(),
        SingleTask(),
        SingleTask(),
        SingleTask(),
        SingleTask()
      ],
    );
  }
}

