import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:studybuddy/navigation_service/NavigationRoutes.dart';

///appbar
class NavBar extends StatelessWidget {

  ///appbar
  const NavBar({required this.onTabChange, super.key});
  ///appbar
  final void Function(int)? onTabChange;


//class _NavBarState extends State<NavBar> {
  //int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      color: Colors.white,
      child: GNav(
        gap: 8,
        tabBorderRadius: 16,
        onTabChange: (value) {
          onTabChange!(value);
            switch (value) {
              case 0:
                context.go(Navigationroutes.root);
              case 1:
                context.go(Navigationroutes.deadlineWeek);
    // Fügen Sie hier weitere Fälle hinzu, wenn Sie mehr Tabs haben
    }
        },
        backgroundColor: Colors.white,
        color: Colors.grey[800],
        activeColor: Colors.white,
        // Hintergrundfarbe des ausgewählten Tabs
        tabBackgroundColor: Colors.blue.withOpacity(0.3),
        padding: const EdgeInsets.all(16),
        tabs: [
          GButton(
            icon: Icons.checklist,
            onPressed: () => context.go('/'),
            //text: 'Deadlines',
            iconActiveColor: Colors.blue,
            iconColor: Colors.grey[800],
            textColor: Colors.blue,
          ),
          GButton(
            icon: Icons.calendar_today,
            //text: 'Kalender',
            onPressed: () => context.go('/deadlineweek'),
            iconActiveColor: Colors.blue,
            iconColor: Colors.grey[800],
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
