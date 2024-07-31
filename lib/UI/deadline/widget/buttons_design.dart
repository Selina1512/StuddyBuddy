import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    required this.text, required this.onPressed, required this.w, super.key,
  });

  final String text;
  final VoidCallback onPressed;
  final double w;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w,
      child: MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(width: 2),

        ),
        child: Text(text),
      ),
    );
  }
}
