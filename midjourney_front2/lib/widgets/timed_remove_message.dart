import 'dart:async';
import 'package:flutter/material.dart';

enum MessageStyle { errorStyle, infoStyle, successStyle }

class TimedRemoveMessage extends StatefulWidget {
  final String messageContent;
  final MessageStyle messageStyle;

  const TimedRemoveMessage({
    Key? key,
    required this.messageContent,
    required this.messageStyle,
  }) : super(key: key);

  @override
  _TimedRemoveMessageState createState() => _TimedRemoveMessageState();
}

class _TimedRemoveMessageState extends State<TimedRemoveMessage> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(Duration(seconds: 3), () {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  TextStyle? _getStyle(MessageStyle level, double opacity) {
    switch (level) {
      case MessageStyle.errorStyle:
        return TextStyle(
            color: Colors.red.withOpacity(opacity),
            fontWeight: FontWeight.bold);
      case MessageStyle.infoStyle:
        return TextStyle(color: Colors.blue.withOpacity(opacity));
      case MessageStyle.successStyle:
        return TextStyle(
            color: Colors.green.withOpacity(opacity),
            fontWeight: FontWeight.bold);
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_timer?.isActive ?? false) {
      return Text(
        widget.messageContent,
        style: _getStyle(widget.messageStyle, 1.0),
      );
    } else {
      return const SizedBox(); // This returns an empty container after the timer is done.
    }
  }
}
