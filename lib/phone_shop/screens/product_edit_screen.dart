import 'package:flutter/material.dart';
import 'package:flutter_internship/phone_shop/screens/product_detail_screen.dart';
import 'package:flutter_internship/phone_shop/widgets/components/fill_button.dart';
import 'package:flutter_internship/phone_shop/widgets/components/shop_gallery.dart';
import 'package:flutter_internship/phone_shop/widgets/components/text_input.dart';
import 'package:flutter_internship/phone_shop/widgets/data/product_details.dart';
import 'package:flutter_internship/sneakers_shop/helpers/my_app1_icons.dart';

class ProductEditScreen extends StatelessWidget {
  const ProductEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: _ProductEditAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _Gallery(),
              // _TextInputs(),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _EnabledButton(),
    );
  }
}

class _ProductEditAppBar extends StatelessWidget
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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductDetailScreen(),
              ),
            );
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
      'Edit product',
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

class _TextInputs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextInput(label: 'Product name', initialValue: 'Iphone 15 Pro'),
        TextInput(label: 'Company', initialValue: 'Apple'),
        TextInput(label: 'Category', initialValue: 'Smartphones'),
        TextInput(
            label: 'Description',
            initialValue:
                'Lorem ipsum dolor sit amet consectetur. Ornare id ullamcorper et non. Massa in urna volutpat sed sagittis eget. Nullam sollicitudin viverra egestas ante. Vitae blandit.'),
        Row(
          children: [
            TextInput(
              label: 'Discount',
              initialValue: '12.44',
              suffixText: '%',
            ),
            SizedBox(width: 16),
            TextInput(
              label: 'Price',
              initialValue: '999.00',
              suffixText: '\$',
            ),
          ],
        )
      ],
    );
  }
}

class _EnabledButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: FloatingActionButton(
          onPressed: () {},
          child: FillButton(
            buttonText: 'Save changes',
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
