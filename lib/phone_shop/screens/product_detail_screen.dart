import 'package:flutter/material.dart';
import 'package:flutter_internship/phone_shop/widgets/components/availability_card.dart';
import 'package:flutter_internship/phone_shop/widgets/components/overview_card.dart';
import 'package:flutter_internship/phone_shop/widgets/components/shop_gallery.dart';
import 'package:flutter_internship/phone_shop/widgets/components/shop_section.dart';
import 'package:flutter_internship/phone_shop/widgets/data/product_details.dart';
import 'package:flutter_internship/sneakers_shop/helpers/my_app1_icons.dart';

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
      leading: _TitleBackIcon(),
      centerTitle: false,
      titleSpacing: 8,
      title: _TitleText(),
      actions: [_TitleEditIcon()],
    );
  }
}

class _TitleBackIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            (ShopIcons.chevron_left),
            size: 24,
          ),
        ),
      ),
    );
  }
}

class _TitleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Product details',
      style: TextStyle(
        color: Color(0xFF000000),
        fontFamily: 'Inter',
        fontSize: 20,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
      ),
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
          onTap: () {},
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
        images: productDetails.images,
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
          title: productDetails.title,
          brand: productDetails.brand,
          discountPercentage: productDetails.discountPercentage,
          price: productDetails.price,
          rating: productDetails.rating,
          description: productDetails.description,
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
          category: productDetails.category,
          stock: productDetails.stock,
        ),
      ),
    );
  }
}
