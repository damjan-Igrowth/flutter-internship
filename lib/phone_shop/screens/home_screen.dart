import 'package:flutter/material.dart';
import 'package:flutter_internship/phone_shop/screens/product_detail_screen.dart';
import 'package:flutter_internship/phone_shop/widgets/components/fill_button.dart';
import 'package:flutter_internship/phone_shop/widgets/components/shop_card.dart';
import 'package:flutter_internship/phone_shop/widgets/data/shop_item_model.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: _HomeScreenTitle(),
      body: SafeArea(child: _ShopCardList()),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _DisabledButton(),
    );
  }
}

class _HomeScreenTitle extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0.0,
      backgroundColor: const Color(0xFFFFFFFF),
      shadowColor: const Color.fromRGBO(0, 0, 0, 0.05),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      leading: Transform.scale(scale: 0.9, child: _TitleImage()),
      titleSpacing: 8,
      centerTitle: false,
      title: _TitleText(),
    );
  }
}

class _TitleImage extends StatelessWidget {
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
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            itemCount: shopItemModels.length,
            itemBuilder: (context, index) {
              return ShopCard(
                title: shopItemModels[index].title,
                price: shopItemModels[index].price,
                discountPercentage: shopItemModels[index].discountPercentage,
                rating: shopItemModels[index].rating,
                stock: shopItemModels[index].stock,
                category: shopItemModels[index].category,
                image: shopItemModels[index].image,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailScreen(
                        shopItemModel: shopItemModels[index],
                      ),
                    ),
                  );
                },
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 16),
          ),
        ),
      ],
    );
  }
}

class _DisabledButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: FloatingActionButton(
          onPressed: () {},
          child: const FillButton(buttonText: 'Add product'),
        ),
      ),
    );
  }
}
