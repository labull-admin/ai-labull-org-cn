import 'package:ai.labull.org.cn/blocs/bloc_exports.dart';
import 'package:ai.labull.org.cn/router/routes_name.dart';
import 'package:ai.labull.org.cn/screens/tasks_screen/image_generation_screen/image_generation_screen.dart';
import 'package:flutter/material.dart';

class TasksSelectionScreen extends StatefulWidget {
  const TasksSelectionScreen({super.key});

  @override
  State<TasksSelectionScreen> createState() => _TasksSelectionScreenState();
}

class _TasksSelectionScreenState extends State<TasksSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, imageGenerationRoute);
            },
            child: const Text('Image Generation'),
          ),
        ],
      ),
    );
  }
}
