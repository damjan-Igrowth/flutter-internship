import 'package:flutter/material.dart';
import 'package:flutter_internship/data/sneakers_list.dart';
import 'package:flutter_internship/helpers/mobile_text.dart';
import 'package:flutter_internship/widgets/components/discount_card.dart';
import 'package:flutter_internship/widgets/components/product_card.dart';
import 'package:flutter_internship/widgets/components/product_card_special.dart';
import 'package:flutter_internship/screens/mobile/sneakers_grid.dart';
import 'package:flutter_svg/svg.dart';

class SoleSphere extends StatelessWidget {
  const SoleSphere({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF8F8F8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _SoleSphereTitle(),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: _buildProductListView(context),
                  ),
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

Widget _buildProductListView(BuildContext context) {
  double screenWidth = MediaQuery.sizeOf(context).width;
  bool isWideScreen = screenWidth > 500;

  Widget productListView;

  if (isWideScreen) {
    productListView = GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
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
    );
  } else {
    productListView = ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: sneakersList.length,
      itemBuilder: (context, index) {
        return ProductCard(
          title: sneakersList[index].title,
          image: sneakersList[index].image,
          price: sneakersList[index].price,
        );
      },
    );
  }
  return SizedBox(
    height: 216,
    child: productListView,
  );
}

class _SoleSphereTitle extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        width: 32,
        height: 32,
        padding: const EdgeInsets.fromLTRB(2.667, 1.333, 2.667, 0.19),
        child: SvgPicture.asset(
          'lib/assets/images/logo.svg',
          fit: BoxFit.contain,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
      titleSpacing: 8,
      centerTitle: false,
      title: RichText(
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
    );
  }
}
