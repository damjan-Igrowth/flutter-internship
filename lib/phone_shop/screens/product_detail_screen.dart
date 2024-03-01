import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_internship/phone_shop/screens/product_edit_screen.dart';
import 'package:flutter_internship/phone_shop/widgets/components/availability_card.dart';
import 'package:flutter_internship/phone_shop/widgets/components/overview_card.dart';
import 'package:flutter_internship/phone_shop/widgets/components/shop_gallery.dart';
import 'package:flutter_internship/phone_shop/widgets/components/shop_section.dart';
import 'package:flutter_internship/phone_shop/widgets/components/title_back_icon.dart';
import 'package:flutter_internship/phone_shop/widgets/components/title_text.dart';
import 'package:flutter_internship/phone_shop/widgets/providers/product.dart';
import 'package:flutter_internship/sneakers_shop/helpers/shop_icons_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductDetailScreen extends ConsumerWidget {
  final int id;

  const ProductDetailScreen({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productProvider(id: id));
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: _ProductDetailAppBar(id: id),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _Gallery(images: product.images),
              _Overview(
                title: product.title,
                brand: product.brand,
                discountPercentage: product.discountPercentage,
                price: product.price,
                rating: product.rating,
                description: product.description,
              ),
              _Availability(
                category: product.category,
                stock: product.stock,
              ),
              _Availability(category: product.category, stock: product.stock),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductDetailAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final int id;
  const _ProductDetailAppBar({required this.id});

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
      actions: [_TitleEditIcon(id: id)],
    );
  }
}

class _TitleEditIcon extends StatelessWidget {
  final int id;

  const _TitleEditIcon({required this.id});

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
                builder: (context) => ProductEditScreen(id: id),
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
  final List<String> images;

  const _Gallery({required this.images});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ShopGallery(
        images: images,
        padding: const EdgeInsets.symmetric(horizontal: 20),
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  final String title;
  final String brand;
  final double discountPercentage;
  final double price;
  final double rating;
  final String description;

  const _Overview({
    required this.title,
    required this.brand,
    required this.discountPercentage,
    required this.price,
    required this.rating,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: ShopSection(
        title: 'Overview',
        child: OverviewCard(
          title: title,
          brand: brand,
          discountPercentage: discountPercentage,
          price: price,
          rating: rating,
          description: description,
        ),
      ),
    );
  }
}

class _Availability extends StatelessWidget {
  final String category;
  final int stock;

  const _Availability({required this.category, required this.stock});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: ShopSection(
        title: 'Availability',
        child: AvailabilityCard(
          category: category,
          stock: stock,
        ),
      ),
    );
  }
}
