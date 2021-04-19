import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  '12 Tasks',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            child: ListView(
              padding: EdgeInsets.all(40.0),
              children: [
                CheckboxListTile(
                    title: Text(
                      'Check one-liner',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    ),
                    value: false,
                    onChanged: (value) {},
                ),
                CheckboxListTile(
                    title: Text(
                      'Check one-liner',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    ),
                    value: false,
                    onChanged: (value) {},),
                CheckboxListTile(
                  title: Text(
                    'Check one-liner',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                  ),
                  value: false,
                  onChanged: (value) {},

          ),
                CheckboxListTile(
                  title: Text(
                    'Check one-liner',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                  ),
                  value: false,
                  onChanged: (value) {},

                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0))),
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 40.0,
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
