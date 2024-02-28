import 'package:flutter_internship/phone_shop/screens/home_screen.dart';
import 'package:flutter_internship/phone_shop/widgets/data/shop_item_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_provider.g.dart';

@riverpod
ShopItemModel product(Ref ref, {required int id}) {
  final products = ref.read(productsProvider);

  return products.where((product) => product.id == id).first;
}

@riverpod
class EditProduct extends _$EditProduct {
  @override
  Future<void> build() async {
    state = const AsyncValue.data(null);
    return;
  }

  Future<void> edit(ShopItemModel edittedItem) async {
    final id = edittedItem.id;

    state = const AsyncValue.loading();

    await Future.delayed(const Duration(seconds: 2));

    final productsNtifier = ref.read(productsProvider.notifier);
    var products = productsNtifier.state;
    final index = products.indexWhere((product) => product.id == id);
    products[index] = edittedItem;

    productsNtifier.state = [...products];

    state = const AsyncValue.data(null);
  }
}
