import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    this.keyboardType,
    required this.text,
    this.icon,
    this.controller,
    required this.obscureText,
    super.key,
  });

  final TextInputType? keyboardType;
  final String text;
  final IconData? icon;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        keyboardType: keyboardType ?? TextInputType.name,
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          border: const OutlineInputBorder(),
          enabledBorder: const OutlineInputBorder(),
          hintText: text,
          errorStyle: const TextStyle(color: Colors.red), // Error message color
          focusedBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.black), // Border color when focused
          ),
          errorBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.red), // Border color for error state
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.red), // Border color for error state when focused
          ),
        ),
        obscureText: obscureText,
        controller: controller,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please fill all the required fields';
          }
          return null;
        },
        style: const TextStyle(
          color: Colors.black, // Text color
        ),
        cursorColor: Colors.black, // Cursor color
      ),
    );
  }
}
