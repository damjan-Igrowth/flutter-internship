import 'package:flutter/material.dart';
import 'package:flutter_internship/phone_store/widgets/dialogs.dart';
import 'package:flutter_internship/phone_store/widgets/phone_card.dart';
import 'package:flutter_internship/phone_store/widgets/phone_tile.dart';
import 'package:flutter_internship/phone_store/widgets/text_field_template.dart';

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
                        PhoneTile(
                            productName: 'Iphone 15 Pro',
                            reviewScore: 4.69,
                            image: 'assets/images/thumbnail 1.png',
                            discount: '-12.96%',
                            price: '\$149.00 \$'),
                        PhoneCard(
                            productName: 'Iphone 15 Pro',
                            image: 'assets/images/thumbnail 1.png',
                            discount: '-12.96%',
                            price: '\$149.00 \$',
                            stars: '4.00',
                            category: Category.smartphones),
                        ErrorDialog(),
                        SuccessDialog(),
                        //TextFieldExample(),
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
