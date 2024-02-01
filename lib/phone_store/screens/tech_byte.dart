import 'package:flutter/material.dart';
import 'package:flutter_internship/phone_store/widgets/phone_card.dart';

class TechByte extends StatelessWidget {
  const TechByte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF8F8F8),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        PhoneCard(
                          image: 'assets/images/thumbnail 1.png',
                          category: Category.smartphones,
                          stars: '4.69',
                          productName: 'Iphone 15 Pro',
                          price: '999.00 €',
                          discount: '-12.44%',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
