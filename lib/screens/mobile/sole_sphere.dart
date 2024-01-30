import 'package:flutter/material.dart';
import 'package:flutter_internship/data/sneakers_list.dart';
import 'package:flutter_internship/helpers/mobile_text.dart';
import 'package:flutter_internship/widgets/components/discount_card.dart';
import 'package:flutter_internship/widgets/components/product_card.dart';
import 'package:flutter_internship/widgets/components/product_card_special.dart';
import 'package:flutter_internship/screens/mobile/sneakers_grid.dart';

class SoleSphere extends StatelessWidget {
  const SoleSphere({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF8F8F8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const MobileText(text: 'Best deal'),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ProductCardSpecial(
                      image: 'lib/assets/images/pngwing 2.png',
                      title: 'NIKE Air Jordan',
                      description: 'Grab the last pair now',
                      price: '160.00 €',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MobileText(text: 'Sneakers'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SneakersGrid(),
                            ),
                          );
                        },
                        child: const BlueText(text: 'View all'),
                      ),
                    ],
                  ),
                  _ProductListView(),
                  const MobileText(text: 'Discount'),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: DiscountCard(
                      title: 'Get a discount!',
                      description:
                          'To unlock an exclusive discount on our stylish sneakers, simply engage with our social media channels by liking, sharing, and tagging friends in our latest posts',
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

class _ProductListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isWideScreen = screenWidth > 500;
    int itemsPerRow = isWideScreen ? 2 : 1;

    Widget productListView;

    if (isWideScreen) {
      productListView = GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: itemsPerRow,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: sneakersList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ProductCard(
              title: sneakersList[index].title,
              image: sneakersList[index].image,
              price: sneakersList[index].price,
            ),
          );
        },
      );
    } else {
      productListView = ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sneakersList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: index % itemsPerRow == 0 ? 20 : 0),
            child: ProductCard(
              title: sneakersList[index].title,
              image: sneakersList[index].image,
              price: sneakersList[index].price,
            ),
          );
        },
      );
    }

    return SizedBox(
      height: 216,
      child: productListView,
    );
  }
}
