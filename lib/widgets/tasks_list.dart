import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/tasks_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            final task = taskData
                .tasks[index]; //Provider.of<TasksData>(context).tasks[index];
            return TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkboxCallback: (checkboxState) {
                  taskData.updateTask(task);
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
