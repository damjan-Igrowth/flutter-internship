import 'package:flutter/material.dart';
import 'package:flutter_internship/screens/layout.dart';
import 'package:flutter_internship/widgets/buttons.dart';

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
              Buttons(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                size: const Size(340, 56),
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
              Buttons(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                size: const Size(340, 56),
                buttonText: 'Components',
                onTap: () {},
              ),
              Buttons(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                size: const Size(340, 56),
                buttonText: 'Mobile App',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
