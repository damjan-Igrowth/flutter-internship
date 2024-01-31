import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/my_flutter_app_icons.dart';
import 'package:flutter_internship/screens/mobile/sole_sphere.dart';
import 'package:flutter_internship/screens/mobile/sneakers_grid.dart';
import 'package:flutter_svg/svg.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget bodyWidget;
    PreferredSizeWidget appBar;

    if (_selectedIndex == 0) {
      bodyWidget = const SoleSphere();
      appBar = _SoleSphereTitle();
    } else if (_selectedIndex == 1) {
      bodyWidget = const SneakersGrid();
      appBar = _SneakersGridTitle();
    } else {
      bodyWidget = const SoleSphere();
      appBar = _SoleSphereTitle();
    }
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: bodyWidget,
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

class _SoleSphereTitle extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(98),
      child: AppBar(
        leading: Transform.scale(
          scale: 0.8,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(2.667, 1.333, 2.667, 0.19),
            child: SvgPicture.asset(
              'lib/assets/images/logo.svg',
              fit: BoxFit.contain,
              width: 32,
              height: 32,
            ),
          ),
        ),
        titleSpacing: 8,
        centerTitle: false,
        title: RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
            ),
            children: [
              TextSpan(
                text: 'Sole',
                style: TextStyle(color: Color(0xFF1892ED)),
              ),
              TextSpan(
                text: ' Sphere',
                style: TextStyle(color: Color(0xFFA44DE8)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SneakersGridTitle extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFFFFFF),
      title: const Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Sneakers',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Color(0xFF000000),
            fontFamily: 'Inter',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
