import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

///
class NavBar extends StatelessWidget {

  ///
  NavBar({super.key, required this.onTabChange});
  ///
  void Function(int)? onTabChange;

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
        onTabChange: (value) => onTabChange!(value),
        backgroundColor: Colors.white,
        color: Colors.grey[800],
        activeColor: Colors.white,
        // Hintergrundfarbe des ausgewählten Tabs
        tabBackgroundColor: Colors.blue.withOpacity(0.3),
        padding: const EdgeInsets.all(16),
        tabs: [
          GButton(
            icon: Icons.checklist,
            //text: 'Deadlines',
            iconActiveColor: Colors.blue, // Farbe des ausgewählten Icons
            iconColor: Colors.grey[800], // Farbe des nicht ausgewählten Icons
            textColor: Colors.blue, // Textfarbe des ausgewählten Tabs
          ),
        ],
      ),
    );
  }

  /*@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }*/
}
