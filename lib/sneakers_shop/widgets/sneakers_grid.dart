import 'package:flutter/material.dart';
import 'package:flutter_internship/sneakers_shop/data/sneakers_list.dart';
import 'package:flutter_internship/components/widgets/product_card.dart';

class SneakersGrid extends StatelessWidget {
  const SneakersGrid({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    int columnsCount = (screenWidth / 168).floor();

    return Container(
      color: const Color(0xFFF8F8F8),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
          ),
        ],
      ),
    );
  }
}
