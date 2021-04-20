import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0)),
          color: Colors.white
        ),
         child: Column(
           children: [
             Text('Add task!'),
             TextField(),
             TextButton(onPressed: () {

             }, child: Text('Add'))
           ],
         ),
      ),
    );
  }
}

// return Container(
// color: Color(0xff6A686A),
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.only(
// topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
// color: Colors.white
// ),
// child: Text('YEY!'),
// ),
// );