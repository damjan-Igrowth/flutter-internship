import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/my_flutter_app_icons.dart';
import 'package:flutter_internship/screens/home.dart';
import 'package:flutter_internship/screens/sneakers.dart';

class NavigationAppBar extends StatefulWidget {
  const NavigationAppBar({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NavigationAppBarState();
  }
}

class _NavigationAppBarState extends State<NavigationAppBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildNavigationItem(
              const Icon(MyFlutterApp.akar_icons_home), 'Home', 0),
          const SizedBox(width: 36),
          buildNavigationItem(
              const Icon(MyFlutterApp.ph_sneaker_move), 'Sneakers', 1),
        ],
      ),
    );
  }

  Widget buildNavigationItem(Icon icon, String label, int index) {
    final isSelected = _currentIndex == index;
    final fontWeight = label == 'Home' ? FontWeight.w500 : FontWeight.w400;
    return Column(
      children: [
        IconButton(
          icon: Icon(
            icon.icon,
            color:
                isSelected ? const Color(0xFF007BFF) : const Color(0xFF757575),
          ),
          onPressed: () {
            setState(() {
              _currentIndex = index;
            });

            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            } else if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SneakersScreen()),
              );
            }
          },
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color:
                isSelected ? const Color(0xFF007BFF) : const Color(0xFF757575),
            fontFamily: 'Inter',
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: fontWeight,
          ),
        ),
      ],
    );
  }
}
