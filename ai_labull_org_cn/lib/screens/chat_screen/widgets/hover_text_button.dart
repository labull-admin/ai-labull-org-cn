import 'package:flutter/material.dart';

class HoverTextButton extends StatefulWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const HoverTextButton(
      {Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);

  @override
  _HoverTextButtonState createState() => _HoverTextButtonState();
}

class _HoverTextButtonState extends State<HoverTextButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: TextButton(
        onPressed: widget.onPressed,
        child: Text(
          widget.buttonText,
          style: TextStyle(
            color: _isHovered ? Colors.grey : Colors.purple,
          ),
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
