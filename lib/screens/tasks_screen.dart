import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/components/tasks_list.dart';
import 'package:to_do/models/user_tasks.dart';
import 'package:to_do/screens/add_task_screen.dart';

class TasksScreen extends StatefulWidget {

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

  @override
  Widget build(BuildContext context) {

    int numberOfTasks = Provider.of<UserTasks>(context).numberOfTasks;

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, bottom: 30.0, left: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 60.0,
                    color: Colors.lightBlueAccent,
                  ),
                  radius: 40.0,
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 30.0),
                Text(
                  'Tudusik',
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '$numberOfTasks Tasks',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            child: TasksList(),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0))),
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) => SingleChildScrollView(child: AddTaskScreen()),
        ),
        child: Icon(
          Icons.add,
          size: 40.0,
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}


