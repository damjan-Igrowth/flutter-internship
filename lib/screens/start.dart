import 'package:flutter/material.dart';
import 'package:flutter_internship/screens/component.dart';
import 'package:flutter_internship/screens/layout.dart';
import 'package:flutter_internship/screens/stop_watch.dart';
import 'package:flutter_internship/widgets/expanded_button.dart';
import 'package:flutter_internship/screens/mobile/shop.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
                ExpandedButton(
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
                ExpandedButton(
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
                ExpandedButton(
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
                ExpandedButton(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
