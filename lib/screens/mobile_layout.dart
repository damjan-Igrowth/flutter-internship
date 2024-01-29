import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/my_flutter_app_icons.dart';
import 'package:flutter_internship/widgets/mobile/sole_sphere.dart';
import 'package:flutter_internship/widgets/mobile/sneakers.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    SoleSphere(),
    Sneakers(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.akar_icons_home),
            label: 'Home',
            backgroundColor: Color(0xFF757575),
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.ph_sneaker_move),
            label: 'Sneakers',
            backgroundColor: Color(0xFF757575),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF007BFF),
        onTap: _onItemTapped,
      ),
    );
  }
}
