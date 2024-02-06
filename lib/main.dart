import 'package:flutter/material.dart';
import 'package:flutter_internship/components/screens/component.dart';
import 'package:flutter_internship/layout_tasks/screens/layout.dart';
import 'package:flutter_internship/phone_store/widgets/add_button.dart';
import 'package:flutter_internship/phone_store/widgets/availability.dart';
import 'package:flutter_internship/phone_store/widgets/dialogs.dart';
import 'package:flutter_internship/phone_store/widgets/overview.dart';
import 'package:flutter_internship/phone_store/widgets/phone_card.dart';
import 'package:flutter_internship/phone_store/widgets/save_button.dart';
import 'package:flutter_internship/phone_store/widgets/text_form_template.dart';
import 'package:flutter_internship/shop/screens/shop.dart';
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
            child: SingleChildScrollView(
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
                  const SizedBox(height: 8),
                  const TextFormTemplate(isDisabled: false),
                  const SizedBox(height: 8),
                  const TextFormTemplate(isDisabled: true),
                  const SizedBox(height: 8),
                  const TextFormTemplate(
                    isDisabled: false,
                    icon: Icon(
                      Icons.home,
                      color: Color(0xFF34A4E3),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const PhoneCard(
                    title: 'Iphone 9',
                    image:
                        'https://s3-alpha-sig.figma.com/img/73bb/e156/2fe59117a09ce278e8118bb4cd024b7a?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HEq0rFoRZxz3KsybAvBmivyveUeegx7e2tyx5IROdUYdRBbScp6OeBtD52LkFcWQXdu1sgyp7~P07mLv5D0MPXgk1gzYdav76ug6wBd-iuQfQELPsOpfCY-lmXTWKCDb6FqtjXCDxUdBKGc3USUWFHOQDMOFaI-ZY4qXAsxIB4ZoPDDSoTSpHg4UJFedUSz8fKoqCMqd4TwzlLMDFMtXXw1L3WuYYBdFOVIN0dxY866Sqd3fEQP5AZOzvqK-fOxea8lfrIIGlF0e45ANlnW2K5BRKaLHO68zqP2T-ovDObG1VoXm-cwXoOVWLno45wHZ4RtoZARcq6OX1WqyX-hwiw__',
                    discountPercentage: 12.96,
                    price: 149,
                    category: 'Smartphones',
                    rating: 4.69,
                    stock: 12,
                  ),
                  Dialogs.error(
                    description: 'Something went wrong while editing product!',
                    onTapFunction: () {
                      print('Try again tapped');
                    },
                  ),
                  const SizedBox(height: 8),
                  Dialogs.success(
                    description: 'The product has been successfully edited!',
                    onTapFunction: () {
                      print('Continue tapped');
                    },
                  ),
                  const AddButton(),
                  const SizedBox(height: 8),
                  const Overview(
                    productName: 'Iphone 15 Pro',
                    category: 'Apple',
                    discount: '12.96',
                    price: '149.00',
                    reviewScore: 4.69,
                    description:
                        'Lorem ipsum dolor sit amet consectetur. Ornare id ullamcorper et non. Massa in urna volutpat sed sagittis eget. Nullam sollicitudin viverra egestas ante. Vitae blandit.',
                  ),
                  const SizedBox(height: 8),
                  const Availability(category: 'Smartphones'),
                  const SizedBox(height: 8),
                  const SaveButton(),
                  const SizedBox(height: 8),
                ],
              ),
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
