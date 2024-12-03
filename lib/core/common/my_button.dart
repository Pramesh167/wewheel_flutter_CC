import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
  });

  final VoidCallback onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color?>(
          widget.backgroundColor ?? Colors.white,
        ),
        foregroundColor: MaterialStateProperty.all<Color?>(
          widget.textColor ?? Colors.white,
        ),
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(
            color: widget.borderColor ?? Colors.white,
          ),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Increased border radius
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(
              vertical: 16, horizontal: 24), // Increased padding
        ),
      ),
      child: Text(widget.text),
    );
  }
}
