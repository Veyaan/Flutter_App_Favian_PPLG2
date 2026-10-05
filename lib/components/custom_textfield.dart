import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextEditingController txtController;
  final bool isPassword; // NEW

  const CustomTextField({
    super.key,
    required this.hint,
    required this.txtController,
    this.isPassword = false, // Default = normal text field
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      obscureText: isPassword, // NEW
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}