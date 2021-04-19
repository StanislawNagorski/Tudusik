import 'package:flutter/material.dart';
import 'package:to_do/components/task_single.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20.0),
      children: [
        SingleTask(),
      ],
    );
  }
}

