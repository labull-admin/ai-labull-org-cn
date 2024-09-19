import 'package:flutter/material.dart';

void showErrorPopup(BuildContext context, String errorMessage) {
  final snackBar = SnackBar(
    content: Text(errorMessage),
    duration: const Duration(seconds: 3),
    backgroundColor: Colors.red,
  );

  // Find the closest ScaffoldMessenger and show the SnackBar.
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
