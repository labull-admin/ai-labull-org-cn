import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ArtisticTextWidget extends StatelessWidget {
  final String text;

  ArtisticTextWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        // Customize your text style:
        fontSize: 40,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: Colors.blueAccent,
        shadows: [
          Shadow(
            blurRadius: 10.0,
            color: Colors.black.withOpacity(0.5),
            offset: Offset(5.0, 5.0),
          ),
        ],
        // You can add more styling properties to make it more artistic
      ),
    );
  }
}
