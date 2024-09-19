import 'package:flutter/material.dart';

void showSuccessPopup(BuildContext context, String successMessage) {
  final snackBar = SnackBar(
    content: Text(successMessage),
    duration: const Duration(seconds: 3),
    backgroundColor: Colors.green,
  );
  // Find the closest ScaffoldMessenger and show the SnackBar.
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
