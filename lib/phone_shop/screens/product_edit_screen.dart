import 'package:flutter/material.dart';
import 'package:flutter_internship/phone_shop/widgets/components/bottom_list_sheet.dart';
import 'package:flutter_internship/phone_shop/widgets/components/dialogs.dart';
import 'package:flutter_internship/phone_shop/widgets/components/fill_button.dart';
import 'package:flutter_internship/phone_shop/widgets/components/shop_gallery.dart';
import 'package:flutter_internship/phone_shop/widgets/components/text_input.dart';
import 'package:flutter_internship/phone_shop/widgets/components/title_back_icon.dart';
import 'package:flutter_internship/phone_shop/widgets/components/title_text.dart';
import 'package:flutter_internship/phone_shop/widgets/data/bottom_sheet_item.dart';
import 'package:flutter_internship/phone_shop/widgets/data/shop_item_model.dart';
import 'package:flutter_internship/phone_shop/widgets/helpers/validators.dart';
import 'package:flutter_internship/sneakers_shop/helpers/shop_icons_icons.dart';

class ProductEditScreen extends StatefulWidget {
  final ShopItemModel shopItemModel;

  const ProductEditScreen({super.key, required this.shopItemModel});

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
              _Gallery(images: widget.shopItemModel.images),
              Form(
                  key: _formKey,
                  child: _TextInputs(
                    isLoading: _isLoading,
                    shopItemModel: widget.shopItemModel,
                  )),
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

class _TextInputs extends StatefulWidget {
  final bool isLoading;
  final ShopItemModel shopItemModel;

  const _TextInputs({
    required this.isLoading,
    required this.shopItemModel,
  });

  @override
  State<_TextInputs> createState() => _TextInputsState();
}

class _TextInputsState extends State<_TextInputs> {
  TextEditingController companyController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController discountPercentageController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    companyController.text = widget.shopItemModel.brand;
    categoryController.text = widget.shopItemModel.category;
    nameController.text = widget.shopItemModel.title;
    descriptionController.text = widget.shopItemModel.description;
    discountPercentageController.text =
        widget.shopItemModel.discountPercentage.toStringAsFixed(2);
    priceController.text = widget.shopItemModel.price.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextInput(
            label: 'Product name',
            controller: nameController,
            validator: emptyFieldValidator,
            enabled: !widget.isLoading,
            onSaved: (value) {
              widget.shopItemModel.title = nameController.text;
            },
          ),
          const SizedBox(height: 36),
          TextInput(
            label: 'Company',
            suffixIcon: const Icon(ShopIcons.lucide_building_2),
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
            onSaved: (value) {
              widget.shopItemModel.brand = companyController.text;
            },
          ),
          const SizedBox(height: 36),
          TextInput(
            label: 'Category',
            suffixIcon: const Icon(ShopIcons.iconamoon_category_light),
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
            onSaved: (value) {
              widget.shopItemModel.category = categoryController.text;
            },
          ),
          const SizedBox(height: 36),
          TextInput(
            label: 'Description',
            controller: descriptionController,
            enabled: !widget.isLoading,
            onSaved: (value) {
              widget.shopItemModel.description = descriptionController.text;
            },
          ),
          const SizedBox(height: 36),
          Row(
            children: [
              Flexible(
                child: TextInput(
                  label: 'Discount',
                  controller: discountPercentageController,
                  suffixText: '%',
                  validator: numericValidator,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  enabled: !widget.isLoading,
                  onSaved: (value) {
                    widget.shopItemModel.discountPercentage =
                        double.parse(discountPercentageController.text);
                  },
                ),
              ),
              const SizedBox(width: 16),
              Flexible(
                child: TextInput(
                  label: 'Price',
                  controller: priceController,
                  suffixText: '\$',
                  validator: numericValidator,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  enabled: !widget.isLoading,
                  onSaved: (value) {
                    widget.shopItemModel.price =
                        double.parse(priceController.text);
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }

  @override
  void dispose() {
    companyController.dispose();
    categoryController.dispose();
    nameController.dispose();
    descriptionController.dispose();
    discountPercentageController.dispose();
    priceController.dispose();
    super.dispose();
  }
}

class _EnabledButton extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final bool isLoading;
  final void Function(bool loading) onLoadingChanged;

  const _EnabledButton({
    required this.formKey,
    required this.isLoading,
    required this.onLoadingChanged,
  });

  @override
  _EnabledButtonState createState() => _EnabledButtonState();
}

class _EnabledButtonState extends State<_EnabledButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: FloatingActionButton(
          backgroundColor: const Color(0xFF34A4E3),
          onPressed: () {},
          child: widget.isLoading
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
                    if (!widget.isLoading) {
                      widget.onLoadingChanged(true);
                      Future.delayed(const Duration(seconds: 5), () {
                        if (widget.formKey.currentState!.validate()) {
                          widget.formKey.currentState!.save();
                          // Navigator.pop(context);
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
                        widget.onLoadingChanged(false);
                      });
                    }
                  }),
        ),
      ),
    );
  }
}
