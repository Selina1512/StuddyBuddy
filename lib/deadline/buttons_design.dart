import 'package:flutter/material.dart';

/// A StatelessWidget that provides a button with a text
/// and an onPressed function.
class Buttons extends StatelessWidget {
  /// Creates a button with a text and an onPressed function.
  const Buttons({
    super.key,
    required this.text,
    required this.onPressed,
    required this.w,
  });

  /// The text displayed on the button.
  final String text;
  /// The function that is called when the button is pressed.
  final VoidCallback onPressed;
  /// The width of the button.
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
