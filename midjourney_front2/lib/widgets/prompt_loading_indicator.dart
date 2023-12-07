import 'dart:async';
import 'package:flutter/material.dart';

class ProgressLine extends StatefulWidget {
  @override
  _ProgressLineState createState() => _ProgressLineState();
}

class _ProgressLineState extends State<ProgressLine> {
  late Timer _timer;
  double _progress = 0.0; // Initial progress is 0%

  @override
  void initState() {
    super.initState();
    // Start the timer when the widget is first built
    _timer = Timer.periodic(Duration(milliseconds: 150), (Timer timer) {
      setState(() {
        // Update the progress line every 150 milliseconds
        _progress += 0.01; // Increment the progress by 1% of the full line
        if (_progress >= 1) {
          // If the progress is complete, stop the timer
          _timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    // Always cancel the timer when disposing the widget to prevent memory leaks
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LinearProgressIndicator(
        value: _progress, // Bind the progress value to the indicator
        backgroundColor: Colors.grey[200], // Set the background color
        color: Colors.blue, // Set the progress color
        minHeight: 5, // Set the height of the progress line
      ),
    );
  }
}
