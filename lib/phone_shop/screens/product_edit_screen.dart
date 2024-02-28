import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_internship/phone_shop/providers/product_provider.dart';
import 'package:flutter_internship/phone_shop/widgets/components/bottom_list_sheet.dart';
import 'package:flutter_internship/phone_shop/widgets/components/dialogs.dart';
import 'package:flutter_internship/phone_shop/widgets/components/fill_button.dart';
import 'package:flutter_internship/phone_shop/widgets/components/shop_gallery.dart';
import 'package:flutter_internship/phone_shop/widgets/components/text_input_field.dart';
import 'package:flutter_internship/phone_shop/widgets/components/title_back_icon.dart';
import 'package:flutter_internship/phone_shop/widgets/components/title_text.dart';
import 'package:flutter_internship/phone_shop/widgets/data/bottom_sheet_item.dart';
import 'package:flutter_internship/phone_shop/widgets/data/shop_item_model.dart';
import 'package:flutter_internship/phone_shop/widgets/helpers/validators.dart';
import 'package:flutter_internship/sneakers_shop/helpers/shop_icons_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductEditScreen extends ConsumerStatefulWidget {
  final int id;

  const ProductEditScreen({super.key, required this.id});

  @override
  ConsumerState<ProductEditScreen> createState() => _ProductEditScreenState();
}

class _ProductEditScreenState extends ConsumerState<ProductEditScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController companyController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController discountPercentageController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final product = ref.read(productProvider(id: widget.id));

    companyController.text = product.brand;
    categoryController.text = product.category;
    nameController.text = product.title;
    descriptionController.text = product.description;
    final discount = product.discountPercentage;
    discountPercentageController.text = discount.toStringAsFixed(2);
    priceController.text = product.price.toStringAsFixed(2);
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

  @override
  Widget build(BuildContext context) {
    final product = ref.read(productProvider(id: widget.id));

    final actionState = ref.watch(editProductProvider);
    final actionNotifier = ref.watch(editProductProvider.notifier);

    ref.listen(editProductProvider, (previous, next) {
      if (previous is! AsyncLoading) return;

      next.maybeWhen(
        data: (data) => showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => Dialogs.success(
            description: 'The product has been successfully edited!',
            onTap: () {
              int count = 3;
              Navigator.of(context).popUntil((_) => count-- <= 0);
            },
          ),
        ),
        error: (error, stackTrace) => showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => Dialogs.error(
            description: 'Something went wrong while editing product!',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        orElse: () {},
      );
    });

    final isLoading = actionState.maybeWhen(
      loading: () => true,
      orElse: () => false,
    );

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: _ProductEditAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              _Gallery(images: product.images),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextInputField(
                        label: 'Product name',
                        controller: nameController,
                        validator: emptyFieldValidator,
                        enabled: !isLoading,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 36),
                      TextInputField(
                        label: 'Company',
                        suffixIcon: const Icon(ShopIcons.lucide_building_2),
                        controller: companyController,
                        readOnly: true,
                        maxLines: 1,
                        onTap: () async {
                          if (!isLoading) {
                            await showModalBottomSheet<String>(
                              context: context,
                              builder: (context) => BottomListSheet(
                                sheetTitleText: 'Company',
                                itemsList: companyListItems,
                                onItemSelected: (String selectedItem) async {
                                  companyController.text = selectedItem;
                                },
                                selectedItem: companyController.text,
                              ),
                            );
                          }
                        },
                        validator: emptyFieldValidator,
                        enabled: !isLoading,
                      ),
                      const SizedBox(height: 36),
                      TextInputField(
                        label: 'Category',
                        suffixIcon:
                            const Icon(ShopIcons.iconamoon_category_light),
                        controller: categoryController,
                        readOnly: true,
                        maxLines: 1,
                        onTap: () async {
                          if (!isLoading) {
                            await showModalBottomSheet<String>(
                              context: context,
                              builder: (context) => BottomListSheet(
                                sheetTitleText: 'Category',
                                itemsList: categoryListItems,
                                onItemSelected: (String selectedItem) async {
                                  categoryController.text = selectedItem;
                                },
                                selectedItem: categoryController.text,
                              ),
                            );
                          }
                        },
                        validator: emptyFieldValidator,
                        enabled: !isLoading,
                      ),
                      const SizedBox(height: 36),
                      TextInputField(
                        label: 'Description',
                        controller: descriptionController,
                        enabled: !isLoading,
                        maxLines: 5,
                      ),
                      const SizedBox(height: 36),
                      Row(
                        children: [
                          Flexible(
                            child: TextInputField(
                              label: 'Discount',
                              controller: discountPercentageController,
                              suffixText: '%',
                              maxLines: 1,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9,.]')),
                              ],
                              validator: numericValidator,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                decimal: true,
                              ),
                              enabled: !isLoading,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Flexible(
                            child: TextInputField(
                              label: 'Price',
                              controller: priceController,
                              suffixText: '\$',
                              maxLines: 1,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9,.]')),
                              ],
                              validator: numericValidator,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                decimal: true,
                              ),
                              enabled: !isLoading,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _EnabledButton(
        formKey: _formKey,
        isLoading: isLoading,
        onPressed: () {
          String title = nameController.text;
          String brand = companyController.text;
          String category = categoryController.text;
          String description = descriptionController.text;
          double discountPercentage =
              double.parse(discountPercentageController.text);
          double price = double.parse(priceController.text);

          ShopItemModel updatedItem = ShopItemModel(
            title: title,
            brand: brand,
            category: category,
            description: description,
            discountPercentage: discountPercentage,
            price: price,
            id: product.id,
            images: product.images,
            image: product.image,
            rating: product.rating,
            stock: product.stock,
          );

          actionNotifier.edit(updatedItem);
        },
        shopItemModel: product,
      ),
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

class _EnabledButton extends StatelessWidget {
  final void Function() onPressed;
  final ShopItemModel shopItemModel;

  final GlobalKey<FormState> formKey;
  final bool isLoading;

  const _EnabledButton({
    required this.formKey,
    required this.isLoading,
    required this.onPressed,
    required this.shopItemModel,
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
                    if (!isLoading) onPressed();
                  },
                ),
        ),
      ),
    );
  }
}
