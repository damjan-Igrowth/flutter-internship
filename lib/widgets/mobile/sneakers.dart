import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/components/product_card.dart';

class Sneakers extends StatelessWidget {
  const Sneakers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Sneakers',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Inter',
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: const SneakersGrid(),
    );
  }
}

class SneakersGrid extends StatelessWidget {
  const SneakersGrid({super.key});

  @override
  Widget build(BuildContext context) {
    int columnsCount;

    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth <= 391) {
      columnsCount = 1;
    } else if (screenWidth >= 392 && screenWidth <= 575) {
      columnsCount = 2;
    } else if (screenWidth >= 576 && screenWidth <= 719) {
      columnsCount = 3;
    } else if (screenWidth >= 720 && screenWidth <= 943) {
      columnsCount = 4;
    } else {
      columnsCount = 5;
    }

    List<ProductCard> sneakersList = [
      const ProductCard(
        title: 'NIKE Dunk Low',
        image: 'lib/assets/images/imageShoe.jpg',
        price: '100.00 €',
      ),
      const ProductCard(
        title: 'AIR FORCE 1 07',
        image: 'lib/assets/images/image 13.png',
        price: '143.00 €',
      ),
      const ProductCard(
        title: 'Nike Air Max 97',
        image: 'lib/assets/images/image 15.png',
        price: '140.00 €',
      ),
      const ProductCard(
        title: 'Adidas NMD_G1',
        image: 'lib/assets/images/image 12.png',
        price: '100.00 €',
      ),
      const ProductCard(
        title: 'PUMA CREEPER PHATTY',
        image: 'lib/assets/images/image 14.png',
        price: '140.00 €',
      ),
      const ProductCard(
        title: 'REEBOK Classic',
        image: 'lib/assets/images/image 16.png',
        price: '140.00 €',
      ),
    ];

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columnsCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: sneakersList.length,
      itemBuilder: (context, index) {
        return sneakersList[index];
      },
    );
  }
}
