import 'package:ai.labull.org.cn/router/routes_name.dart';
import 'package:flutter/material.dart';

class TasksSelectionScreen extends StatefulWidget {
  const TasksSelectionScreen({super.key});

  @override
  State<TasksSelectionScreen> createState() => _TasksSelectionScreenState();
}

class _TasksSelectionScreenState extends State<TasksSelectionScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('谢小湖 测试版'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, imageGenerationRoute);
              },
              child: const Text('文字->图片'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, imageVariationRoute);
              },
              child: const Text('图片变化'),
            ),
          ],
        ),
      ),
    );
  }
}
