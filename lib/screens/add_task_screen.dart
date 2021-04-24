import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addFunction;
  AddTaskScreen({this.addFunction});

  @override
  Widget build(BuildContext context) {

    String userInput;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0)),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, right: 30.0, left: 30.0),
          child: Column(
            children: [
              Text(
                'Add task',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) => userInput = value,
              ),
              SizedBox(height: 30.0,),
              TextButton(
                onPressed: () {
                  addFunction(userInput);
                  Navigator.pop(context);
                },
                child: Text('Add'),
                style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.lightBlueAccent,
                minimumSize: Size.fromHeight(40.0),
              ),),
              SizedBox(height: 30.0,)
            ],
          ),
        ),
      ),
    );
  }
}

