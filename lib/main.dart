import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/tasks_data.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TasksData>(
      create: (BuildContext context) => TasksData(),
      child: const MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
