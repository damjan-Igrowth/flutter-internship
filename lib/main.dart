import 'package:flutter/material.dart';
import 'package:flutter_internship/components/screens/component.dart';
import 'package:flutter_internship/layout_tasks/screens/layout.dart';
import 'package:flutter_internship/phone_shop/screens/home_screen.dart';
import 'package:flutter_internship/sneakers_shop/screens/shop.dart';
import 'package:flutter_internship/stopwatch/stop_watch.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _ExpandedButton(
                  backgroundColor: const Color(0xFF7E44F8),
                  buttonText: 'Layout',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LayoutScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                _ExpandedButton(
                  backgroundColor: const Color(0xFF44B7F8),
                  buttonText: 'Components',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ComponentClass(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                _ExpandedButton(
                  backgroundColor: const Color(0xFFF89A44),
                  buttonText: 'Sneakers App',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Shop(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                _ExpandedButton(
                  backgroundColor: const Color(0xFF0E111C),
                  buttonText: 'StopWatch',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StopWatch(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                _ExpandedButton(
                  backgroundColor: const Color(0xFF2AE0B1),
                  buttonText: 'TechByte',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ExpandedButton extends StatelessWidget {
  final Color backgroundColor;
  final String buttonText;

  const _ExpandedButton({
    required this.backgroundColor,
    required this.buttonText,
    required this.onTap,
  });
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        side: BorderSide.none,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
