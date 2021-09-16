import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class AddTaskScreen extends StatelessWidget {
  final Function(String?)? addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
      margin: EdgeInsets.only(),
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 30, left: 40, right: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              onChanged: (value) {
                newTaskTitle = value;
              },
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Enter task',
              ),
            ),
            SizedBox(height: 4),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                addTaskCallback!(newTaskTitle);
              },
              child: Text(
                'Add',
                style: kChecklistTextStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
