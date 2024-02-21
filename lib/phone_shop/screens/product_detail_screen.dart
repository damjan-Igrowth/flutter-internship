import 'package:flutter/material.dart';
import 'package:flutter_internship/phone_shop/screens/product_edit_screen.dart';
import 'package:flutter_internship/phone_shop/widgets/components/availability_card.dart';
import 'package:flutter_internship/phone_shop/widgets/components/overview_card.dart';
import 'package:flutter_internship/phone_shop/widgets/components/shop_gallery.dart';
import 'package:flutter_internship/phone_shop/widgets/components/shop_section.dart';
import 'package:flutter_internship/phone_shop/widgets/components/title_back_icon.dart';
import 'package:flutter_internship/phone_shop/widgets/components/title_text.dart';
import 'package:flutter_internship/phone_shop/widgets/data/shop_item_model.dart';
import 'package:flutter_internship/sneakers_shop/helpers/shop_icons_icons.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: _ProductDetailAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _Gallery(),
              _Overview(),
              _Availability(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductDetailAppBar extends StatelessWidget
    implements PreferredSizeWidget {
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
      leading: const TitleBackIcon(),
      centerTitle: false,
      titleSpacing: 8,
      title: const TitleText(title: 'Product details'),
      actions: [_TitleEditIcon()],
    );
  }
}

class _TitleEditIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductEditScreen(),
              ),
            );
          },
          child: const Icon(
            (ShopIcons.basil_edit_outline),
            size: 24,
            color: Color(0xFF458FFF),
          ),
        ),
      ),
    );
  }
}

class _Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ShopGallery(
        images: shopItemModels[1].images,
        padding: const EdgeInsets.symmetric(horizontal: 20),
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: ShopSection(
        title: 'Overview',
        child: OverviewCard(
          title: shopItemModels[1].title,
          brand: shopItemModels[1].brand,
          discountPercentage: shopItemModels[1].discountPercentage,
          price: shopItemModels[1].price,
          rating: shopItemModels[1].rating,
          description: shopItemModels[1].description,
        ),
      ),
    );
  }
}

class _Availability extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: ShopSection(
        title: 'Availability',
        child: AvailabilityCard(
          category: shopItemModels[1].category,
          stock: shopItemModels[1].stock,
        ),
      ),
    );
  }
}
