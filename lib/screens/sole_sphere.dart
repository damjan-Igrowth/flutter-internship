import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SoleSphereScreen extends StatelessWidget {
  const SoleSphereScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset('lib/assets/images/logo.svg',
            width: 26, height: 26, fit: BoxFit.contain),
        title: Align(
          alignment: Alignment.centerLeft,
          child: RichText(
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
      ),
    );
  }
}
