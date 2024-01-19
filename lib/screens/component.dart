import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/chip_text.dart';
import 'package:flutter_internship/helpers/header_text.dart';
import 'package:flutter_internship/helpers/spacer_width.dart';
import 'package:flutter_internship/widgets/components/assignment_card.dart';
import 'package:flutter_internship/widgets/components/chip_component.dart';
import 'package:flutter_internship/widgets/components/circle_icon.dart';
import 'package:flutter_internship/widgets/components/discount_card.dart';
import 'package:flutter_internship/widgets/components/product_card.dart';

class ComponentClass extends StatelessWidget {
  const ComponentClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const HeaderText(text: 'Components'),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              //////////1
              HeaderText(text: 'Chip components'),
              Row(
                children: [
                  ChipComponentClass(
                    color: Colors.grey,
                    label: ChipText(text: 'Work in Progress'),
                  ),
                  SpacerWidth(),
                  ChipComponentClass(
                    color: Colors.grey,
                    label: Row(
                      children: [
                        ChipText(text: 'Work in Progress'),
                        SpacerWidth(),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                  SpacerWidth(),
                  ChipComponentClass(
                    color: Colors.white,
                    label: Row(
                      children: [
                        ChipText(text: 'New'),
                        SpacerWidth(),
                        Icon(
                          Icons.circle,
                          color: Colors.red,
                          size: 12,
                        ),
                      ],
                    ),
                  ),
                  SpacerWidth(),
                  ChipComponentClass(
                    color: Colors.white,
                    label: ChipText(text: 'Old collection'),
                  ),
                ],
              ),
              //////////2
              HeaderText(text: 'Circle icon'),
              Row(
                children: [
                  CircleIconClass(
                    icon: Icons.check_circle_outline_rounded,
                    iconSize: 24,
                    containerSize: 48,
                    backgroundColor: Colors.greenAccent,
                    iconColor: Colors.green,
                  ),
                  SpacerWidth(),
                  CircleIconClass(
                    icon: Icons.error,
                    iconSize: 24,
                    containerSize: 48,
                    backgroundColor: Colors.orangeAccent,
                    iconColor: Colors.orange,
                  ),
                  SpacerWidth(),
                  CircleIconClass(
                    icon: Icons.cancel,
                    iconSize: 24,
                    containerSize: 48,
                    backgroundColor: Colors.redAccent,
                    iconColor: Colors.red,
                  ),
                ],
              ),
              //////////3
              HeaderText(text: 'Assignment Card'),
              AssignmentCard(
                title: 'Assignment V',
                description:
                    'Lorem ipsum dolor sit amet consectetur. Cum enim tempus purus condimentum tristique viverra. Ipsum aliquam nisl imperdiet justo arcu nulla tortor cursus suspendisse.',
                status: ChipComponentClass(
                  color: Colors.grey,
                  label: ChipText(text: 'Work in Progress'),
                ),
              ),
              //////////4
              HeaderText(text: 'Discount Card'),
              DiscountCard(
                title: 'Get a discount!',
                description:
                    'To unlock an exclusive discount on our stylish sneakers, simply engage with our social media channels by liking, sharing, and tagging friends in our latest posts',
                iconStatus: CircleIconClass(
                  icon: Icons.check_circle_outline_rounded,
                  iconSize: 24.5,
                  containerSize: 49,
                  backgroundColor: Colors.greenAccent,
                  iconColor: Colors.green,
                ),
              ),
              //////////5
              HeaderText(text: 'Product Card'),
              ProductCard(
                title: 'NIKE Dunk Low',
                image: 'lib/assets/images/imageShoe.jpg',
                price: '100.00 €',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
