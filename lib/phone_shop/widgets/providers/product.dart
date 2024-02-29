import 'package:flutter_internship/phone_shop/widgets/data/shop_item_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product.g.dart';

@riverpod
class Products extends _$Products {
  @override
  List<ShopItemModel> build() {
    return shopItemModels;
  }

  void updateItem(ShopItemModel shopItemModel) {
    final index = state.indexWhere((product) => product.id == shopItemModel.id);
    state[index] = shopItemModel;
    state = [...state];
  }
}

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

  Future<void> edit(ShopItemModel editedItem) async {
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(seconds: 2));
    ref.read(productsProvider.notifier).updateItem(editedItem);
    state = const AsyncValue.data(null);
  }
}
