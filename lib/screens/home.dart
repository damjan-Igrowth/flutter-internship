import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/spacerbetween.dart';
import 'package:flutter_internship/screens/component.dart';
import 'package:flutter_internship/screens/layout.dart';
import 'package:flutter_internship/screens/mobile_app.dart';
import 'package:flutter_internship/widgets/expanded_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ExpandedButton(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
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
              const SpacerBetween(),
              ExpandedButton(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
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
              const SpacerBetween(),
              ExpandedButton(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                buttonText: 'Mobile App',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MobileAppClass(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
