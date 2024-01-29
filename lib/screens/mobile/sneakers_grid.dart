import 'package:flutter/material.dart';
import 'package:flutter_internship/data/sneakers_list.dart';
import 'package:flutter_internship/widgets/components/product_card.dart';

class SneakersGrid extends StatelessWidget {
  const SneakersGrid({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    int columnsCount = (screenWidth / 168).floor();

    return SingleChildScrollView(
      child: Container(
        color: const Color(0xFFF8F8F8),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sneakers',
                style: TextStyle(
                    color: Color(0xFF000000),
                    fontFamily: 'Inter',
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none),
              ),
              const SizedBox(height: 16),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columnsCount,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: sneakersList.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    title: sneakersList[index].title,
                    image: sneakersList[index].image,
                    price: sneakersList[index].price,
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
