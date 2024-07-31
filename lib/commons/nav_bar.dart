import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:studybuddy/commons/app_colors.dart';
import 'package:studybuddy/navigation_service/navigation_routes.dart';

class NavBar extends StatelessWidget {

  const NavBar({required this.onTabChange, super.key});
  static const double gapValue = 8;
  static const double borderRadiusValue = 16;
  final void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      color: const Color.fromRGBO(197, 224, 231, .8),
      child: GNav(
        gap: gapValue,
        tabBorderRadius: borderRadiusValue,
        onTabChange: (value) {
          onTabChange!(value);
            switch (value) {
              case 0:
                context.go(Navigationroutes.root);
              case 1:
                context.go(Navigationroutes.deadlineWeek);
    }
        },
        backgroundColor: const Color.fromRGBO(197, 224, 231, .8),
        color: AppColors.tertiaryColor,
        padding: const EdgeInsets.all(borderRadiusValue),
        tabs: [
          GButton(
            icon: Icons.checklist,
            onPressed: () => context.go(Navigationroutes.root),
            iconColor: AppColors.tertiaryColor,
            textColor: AppColors.primaryColor,
          ),
          GButton(
            icon: Icons.calendar_today,
            onPressed: () => context.go(Navigationroutes.deadlineWeek),
            iconActiveColor: AppColors.primaryColor,
            iconColor: AppColors.tertiaryColor,
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
