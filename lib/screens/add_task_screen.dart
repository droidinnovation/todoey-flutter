import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/tasks_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late String textInputChanged;

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue) {
                textInputChanged = newValue;
              },
            ),
            TextButton(
              style:
                  TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Provider.of<TasksData>(context, listen: false)
                    .addTask(textInputChanged);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
