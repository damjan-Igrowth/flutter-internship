import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/mobile_text.dart';
import 'package:flutter_internship/widgets/components/discount_card.dart';
import 'package:flutter_internship/widgets/components/product_card.dart';
import 'package:flutter_internship/widgets/components/product_card_special.dart';
import 'package:flutter_internship/widgets/mobile/sneakers.dart';
import 'package:flutter_svg/svg.dart';

class SoleSphere extends StatelessWidget {
  const SoleSphere({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF8F8F8),
        appBar: _SoleSphereTitle(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const MobileText(text: 'Best deal'),
                const ProductCardSpecial(
                  image: 'lib/assets/images/pngwing 2.png',
                  title: 'NIKE Air Jordan',
                  description: 'Grab the last pair now',
                  price: '160.00 €',
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
                              builder: (context) => const Sneakers(),
                            ),
                          );
                        },
                        child: const BlueText(text: 'View all'))
                  ],
                ),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProductCard(
                      title: 'NIKE Dunk Low',
                      image: 'lib/assets/images/imageShoe.jpg',
                      price: '100.00 €',
                    ),
                    SizedBox(width: 12),
                    ProductCard(
                      title: 'AIR FORCE 1 07',
                      image: 'lib/assets/images/image 13.png',
                      price: '143.00 €',
                    ),
                    SizedBox(width: 12),
                    ProductCard(
                      title: 'Nike Air Max 97',
                      image: 'lib/assets/images/image 15.png',
                      price: '140.00 €',
                    ),
                    SizedBox(width: 12),
                    ProductCard(
                      title: 'Adidas NMD_G1',
                      image: 'lib/assets/images/image 12.png',
                      price: '100.00 €',
                    ),
                    SizedBox(width: 12),
                    ProductCard(
                      title: 'PUMA CREEPER PHATTY',
                      image: 'lib/assets/images/image 14.png',
                      price: '140.00 €',
                    ),
                    SizedBox(width: 12),
                    ProductCard(
                      title: 'REEBOK Classic',
                      image: 'lib/assets/images/image 16.png',
                      price: '140.00 €',
                    ),
                  ],
                ),
                const MobileText(text: 'Discount'),
                const DiscountCard(
                  title: 'Get a discount!',
                  description:
                      'To unlock an exclusive discount on our stylish sneakers, simply engage with our social media channels by liking, sharing, and tagging friends in our latest posts',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SoleSphereTitle extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: SvgPicture.asset('lib/assets/images/logo.svg',
          width: 26, height: 26, fit: BoxFit.contain),
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
