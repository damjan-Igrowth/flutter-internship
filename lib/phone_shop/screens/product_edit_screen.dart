import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_internship/phone_shop/helpers/validators.dart';
import 'package:flutter_internship/phone_shop/widgets/components/bottom_list_sheet.dart';
import 'package:flutter_internship/phone_shop/widgets/components/dialogs.dart';
import 'package:flutter_internship/phone_shop/widgets/components/fill_button.dart';
import 'package:flutter_internship/phone_shop/widgets/components/shop_gallery.dart';
import 'package:flutter_internship/phone_shop/widgets/components/text_input_field.dart';
import 'package:flutter_internship/phone_shop/widgets/components/title_back_icon.dart';
import 'package:flutter_internship/phone_shop/widgets/components/title_text.dart';
import 'package:flutter_internship/phone_shop/widgets/data/bottom_sheet_item.dart';
import 'package:flutter_internship/phone_shop/widgets/data/product_details.dart';
import 'package:flutter_internship/phone_shop/widgets/data/product_edit_details.dart';

class ProductEditScreen extends StatefulWidget {
  const ProductEditScreen({super.key});

  @override
  State<ProductEditScreen> createState() => _ProductEditScreenState();
}

class _ProductEditScreenState extends State<ProductEditScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: _ProductEditAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              _Gallery(),
              Form(key: _formKey, child: _TextInputs(isLoading: _isLoading)),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _EnabledButton(
        formKey: _formKey,
        isLoading: _isLoading,
        onLoadingChanged: _setLoading,
      ),
    );
  }

  void _setLoading(bool loading) {
    setState(() {
      _isLoading = loading;
    });
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
  final bool isLoading;

  const _TextInputs({required this.isLoading});

  @override
  State<_TextInputs> createState() => _TextInputsState();
}

class _TextInputsState extends State<_TextInputs> {
  TextEditingController companyController =
      TextEditingController(text: productEditCompany.initialValue);
  TextEditingController categoryController =
      TextEditingController(text: productEditCategory.initialValue);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextInputField(
            label: productEditName.label,
            initialValue: productEditName.initialValue,
            validator: emptyFieldValidator,
            enabled: !widget.isLoading,
            maxLines: 1,
          ),
          const SizedBox(height: 36),
          TextInputField(
            label: productEditCompany.label,
            suffixIcon: productEditCompany.suffixIcon,
            controller: companyController,
            readOnly: true,
            onTap: () async {
              if (!widget.isLoading) {
                await showModalBottomSheet<String>(
                  context: context,
                  builder: (context) => BottomListSheet(
                    sheetTitleText: 'Company',
                    itemsList: companyListItems,
                    onItemSelected: (String selectedItem) async {
                      setState(() {
                        companyController.text = selectedItem;
                      });
                    },
                    selectedItem: companyController.text,
                  ),
                );
              }
            },
            validator: emptyFieldValidator,
            enabled: !widget.isLoading,
            maxLines: 1,
          ),
          const SizedBox(height: 36),
          TextInputField(
            label: productEditCategory.label,
            suffixIcon: productEditCategory.suffixIcon,
            controller: categoryController,
            readOnly: true,
            onTap: () async {
              if (!widget.isLoading) {
                await showModalBottomSheet<String>(
                  context: context,
                  builder: (context) => BottomListSheet(
                    sheetTitleText: 'Category',
                    itemsList: categoryListItems,
                    onItemSelected: (String selectedItem) async {
                      setState(() {
                        categoryController.text = selectedItem;
                      });
                    },
                    selectedItem: categoryController.text,
                  ),
                );
              }
            },
            validator: emptyFieldValidator,
            enabled: !widget.isLoading,
            maxLines: 1,
          ),
          const SizedBox(height: 36),
          TextInputField(
            label: productEditDescription.label,
            initialValue: productEditDescription.initialValue,
            enabled: !widget.isLoading,
            maxLines: 5,
          ),
          const SizedBox(height: 36),
          Row(
            children: [
              Flexible(
                child: TextInputField(
                  label: productEditDiscount.label,
                  initialValue: productEditDiscount.initialValue,
                  suffixText: productEditDiscount.suffixText,
                  validator: numericValidator,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  enabled: !widget.isLoading,
                  maxLines: 1,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9,.]')),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Flexible(
                child: TextInputField(
                  label: productEditPrice.label,
                  initialValue: productEditPrice.initialValue,
                  suffixText: productEditPrice.suffixText,
                  validator: numericValidator,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  enabled: !widget.isLoading,
                  maxLines: 1,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9,.]')),
                  ],
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
  final GlobalKey<FormState> formKey;
  final bool isLoading;
  final void Function(bool loading) onLoadingChanged;

  const _EnabledButton({
    required this.formKey,
    required this.isLoading,
    required this.onLoadingChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: FloatingActionButton(
          backgroundColor: const Color(0xFF34A4E3),
          onPressed: null,
          child: isLoading
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
                    if (!isLoading) {
                      onLoadingChanged(true);
                      Future.delayed(const Duration(seconds: 5), () {
                        if (formKey.currentState!.validate()) {
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
                        onLoadingChanged(false);
                      });
                    }
                  }),
        ),
      ),
    );
  }
}
