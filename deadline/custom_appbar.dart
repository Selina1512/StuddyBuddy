import 'package:flutter/material.dart';

/// A StatelessWidget that provides a custom app bar.
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  /// Creates a custom app bar.
  const CustomAppBar({super.key, required this.title});

  /// The title of the app bar.
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: const Color.fromRGBO(203, 199, 216, .8),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
