import 'package:flutter/material.dart';
import 'package:flutter_internship/phone_shop/widgets/components/dialogs.dart';
import 'package:flutter_internship/phone_shop/widgets/components/fill_button.dart';
import 'package:flutter_internship/phone_shop/widgets/components/shop_gallery.dart';
import 'package:flutter_internship/phone_shop/widgets/components/text_input.dart';
import 'package:flutter_internship/phone_shop/widgets/components/title_back_icon.dart';
import 'package:flutter_internship/phone_shop/widgets/components/title_text.dart';
import 'package:flutter_internship/phone_shop/widgets/data/product_details.dart';
import 'package:flutter_internship/phone_shop/widgets/data/product_edit_details.dart';

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
              _TextInputs(),
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
      leading: const TitleBackIcon(),
      centerTitle: false,
      titleSpacing: 8,
      title: const TitleText(title: 'Edit product'),
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
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextInput(
            label: productEditName.label,
            initialValue: productEditName.initialValue,
          ),
          const SizedBox(height: 36),
          TextInput(
            label: productEditCompany.label,
            initialValue: productEditCompany.initialValue,
          ),
          const SizedBox(height: 36),
          TextInput(
            label: productEditCategory.label,
            initialValue: productEditCategory.initialValue,
          ),
          const SizedBox(height: 36),
          TextInput(
            label: productEditDescription.label,
            initialValue: productEditDescription.initialValue,
            isDescription: productEditDescription.isDescription,
          ),
          const SizedBox(height: 36),
          Row(
            children: [
              Flexible(
                child: TextInput(
                  label: productEditDiscount.label,
                  initialValue: productEditDiscount.initialValue,
                  suffixText: productEditDiscount.suffixText,
                ),
              ),
              const SizedBox(width: 16),
              Flexible(
                child: TextInput(
                  label: productEditPrice.label,
                  initialValue: productEditPrice.initialValue,
                  suffixText: productEditPrice.suffixText,
                ),
              ),
            ],
          ),
          const SizedBox(height: 100),
        ],
      ),
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
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => Dialogs.success(
                  description: 'The product has been successfully edited!',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
