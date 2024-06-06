import 'package:flutter/material.dart';


/// A StatelessWidget that provides a gradient background.
///
/// This widget takes a child widget
/// and applies a linear gradient background to it.
class GradientBackground extends StatelessWidget {

  /// Creates a gradient background.
  const GradientBackground({super.key, required this.child});

  /// The child widget to which the gradient background is applied.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(203, 199, 216, 1),
            Color.fromRGBO(112, 177, 196, 1),
          ],
        ),
      ),
      child: child,
    );
  }
}
