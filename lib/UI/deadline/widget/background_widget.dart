import 'package:flutter/material.dart';


class GradientBackground extends StatelessWidget {

  const GradientBackground({required this.child, super.key});

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
