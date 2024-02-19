import 'package:flutter/material.dart';
import 'package:flutter_internship/phone_shop/widgets/components/company_bottom_sheet.dart';
import 'package:flutter_internship/phone_shop/widgets/components/dialogs.dart';
import 'package:flutter_internship/phone_shop/widgets/components/fill_button.dart';
import 'package:flutter_internship/phone_shop/widgets/components/shop_gallery.dart';
import 'package:flutter_internship/phone_shop/widgets/components/text_input.dart';
import 'package:flutter_internship/phone_shop/widgets/components/title_back_icon.dart';
import 'package:flutter_internship/phone_shop/widgets/components/title_text.dart';
import 'package:flutter_internship/phone_shop/widgets/data/product_details.dart';
import 'package:flutter_internship/phone_shop/widgets/data/product_edit_details.dart';
import 'package:flutter_internship/sneakers_shop/helpers/shop_icons_icons.dart';

class ProductEditScreen extends StatefulWidget {
  const ProductEditScreen({super.key});

  @override
  State<ProductEditScreen> createState() => _ProductEditScreenState();
}

class _ProductEditScreenState extends State<ProductEditScreen> {
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

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
              Form(key: _formKey, child: _TextInputs()),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _EnabledButton(formKey: _formKey),
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

class _TextInputs extends StatefulWidget {
  @override
  State<_TextInputs> createState() => _TextInputsState();
}

class _TextInputsState extends State<_TextInputs> {
  TextEditingController statusController = TextEditingController();

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
            validator: emptyFieldValidator,
          ),
          const SizedBox(height: 36),
          TextInput(
            label: productEditCompany.label,
            initialValue: productEditCompany.initialValue,
            suffixIcon: productEditCompany.suffixIcon,
            readOnly: true,
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const CompanyBottomSheet(
                  sheetTitleText: 'Company',
                  firstText: 'Apple',
                  secondText: 'Samsung',
                  thirdText: 'Xiaomi',
                  fourthText: 'Realme',
                  fifthText: 'Oneplus',
                ),
              );
            },
            validator: emptyFieldValidator,
          ),
          const SizedBox(height: 36),
          TextInput(
            label: productEditCategory.label,
            initialValue: productEditCategory.initialValue,
            suffixIcon: productEditCategory.suffixIcon,
            readOnly: true,
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const CompanyBottomSheet(
                  sheetTitleText: 'Category',
                  firstText: 'Smartphones',
                  secondText: 'Laptops',
                  thirdText: 'Video Games',
                  fourthText: 'Audio',
                  fifthText: 'Appliances',
                  firstIcon: ShopIcons.smartphone,
                  secondIcon: ShopIcons.laptop,
                  thirdIcon: ShopIcons.games,
                  fourthIcon: ShopIcons.audio,
                  fifthIcon: ShopIcons.appliances,
                ),
              );
            },
            validator: emptyFieldValidator,
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
                  validator: numericValidator,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                ),
              ),
              const SizedBox(width: 16),
              Flexible(
                child: TextInput(
                  label: productEditPrice.label,
                  initialValue: productEditPrice.initialValue,
                  suffixText: productEditPrice.suffixText,
                  validator: numericValidator,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
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

class _EnabledButton extends StatefulWidget {
  final GlobalKey<FormState> formKey;

  const _EnabledButton({required this.formKey});

  @override
  _EnabledButtonState createState() => _EnabledButtonState();
}

class _EnabledButtonState extends State<_EnabledButton> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: FloatingActionButton(
          backgroundColor: const Color(0xFF34A4E3),
          onPressed: () {},
          child: _isLoading
              ? const SizedBox(
                  width: 22,
                  height: 22,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color?>(Colors.white),
                    strokeWidth: 2.5,
                  ),
                )
              : FillButton(
                  buttonText: 'Save changes',
                  onTap: () {
                    if (!_isLoading) {
                      setState(() {
                        _isLoading = true;
                      });
                      Future.delayed(const Duration(seconds: 5), () {
                        if (widget.formKey.currentState!.validate()) {
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) => Dialogs.success(
                              description:
                                  'The product has been successfully edited!',
                              onTap: () {
                                int count = 3;
                                Navigator.of(context)
                                    .popUntil((_) => count-- <= 0);
                              },
                            ),
                          );
                        } else {
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) => Dialogs.error(
                              description:
                                  'Something went wrong while editing product!',
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          );
                        }
                        setState(() {
                          _isLoading = false;
                        });
                      });
                    }
                  }),
        ),
      ),
    );
  }
}

String? emptyFieldValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Empty field';
  }
  return null;
}

String? numericValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Empty field!';
  }
  if (double.tryParse(value.replaceAll(',', '.')) == null) {
    return 'Must be a valid number!';
  }
  return null;
}
