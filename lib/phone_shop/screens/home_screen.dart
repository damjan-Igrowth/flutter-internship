import 'package:flutter/material.dart';
import 'package:flutter_internship/phone_shop/screens/product_detail_screen.dart';
import 'package:flutter_internship/phone_shop/widgets/components/fill_button.dart';
import 'package:flutter_internship/phone_shop/widgets/components/shop_card.dart';
import 'package:flutter_internship/phone_shop/widgets/data/shop_cards.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: _HomeScreenTitle(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _ShopCardList(),
            _DisabledButton(),
          ],
        ),
      ),
    );
  }
}

class _HomeScreenTitle extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(102),
      child: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        shadowColor: const Color.fromRGBO(0, 0, 0, 0.05),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
        leading: Transform.scale(scale: 0.9, child: _TitleIcon()),
        titleSpacing: 8,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: _TitleText(),
        ),
      ),
    );
  }
}

class _TitleIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SvgPicture.asset(
        'assets/images/Group.svg',
        fit: BoxFit.contain,
        width: 32,
        height: 28.196,
      ),
    );
  }
}

class _TitleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF2AE0B1),
            Color(0xFF048FF1),
          ],
        ).createShader(bounds);
      },
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Tech',
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 23.327,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Byte',
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 23.327,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ShopCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
        child: ListView.builder(
          itemCount: shopCards.length,
          itemBuilder: (context, index) {
            return MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductDetailScreen(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    ShopCard(
                      title: shopCards[index].title,
                      price: shopCards[index].price,
                      discountPercentage: shopCards[index].discountPercentage,
                      rating: shopCards[index].rating,
                      stock: shopCards[index].stock,
                      category: shopCards[index].category,
                      image: shopCards[index].image,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _DisabledButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: FillButton(buttonText: 'Add product'),
    );
  }
}
