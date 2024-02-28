class ShopItemModel {
  final int id;
  final String title;
  final String image;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String category;
  final double price;

  final String brand;
  final String description;
  final List<String> images;

  ShopItemModel({
    required this.id,
    required this.brand,
    required this.description,
    required this.images,
    required this.title,
    required this.image,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.category,
    required this.price,
  });
}

final List<ShopItemModel> shopItemModels = [
  ShopItemModel(
    title: 'Iphone 15 Pro',
    image:
        'https://istyle.rs/media/catalog/product/i/p/iphone_15_pro_black_titanium_pdp_image_position-1__en-us.jpg',
    discountPercentage: 12.44,
    rating: 4.69,
    stock: 12,
    category: 'Smartphones',
    price: 999,
    brand: 'Apple',
    description:
        'Lorem ipsum dolor sit amet consectetur. Ornare id ullamcorper et non. Massa in urna volutpat sed sagittis eget. Nullam sollicitudin viverra egestas ante. Vitae blandit.',
    images: [
      'https://istyle.rs/media/catalog/product/i/p/iphone_15_pro_black_titanium_pdp_image_position-1__en-us.jpg',
      'https://tujenganeventures.co.ke/wp-content/uploads/2024/01/Samsung-Galaxy-S24-Ultra-a.jpeg',
      'https://mi-srbija.rs/storage/product/images/ac/1a/xiaomi-14-7044.png',
    ],
    id: 1,
  ),
  ShopItemModel(
    title: 'Samsung S24',
    image:
        'https://tujenganeventures.co.ke/wp-content/uploads/2024/01/Samsung-Galaxy-S24-Ultra-a.jpeg',
    discountPercentage: 22.96,
    rating: 5,
    stock: 12,
    category: 'Smartphones',
    price: 899,
    brand: 'Samsung',
    description:
        'Lorem ipsum dolor sit amet consectetur. Ornare id ullamcorper et non. Massa in urna volutpat sed sagittis eget. Nullam sollicitudin viverra egestas ante. Vitae blandit.',
    images: [
      'https://tujenganeventures.co.ke/wp-content/uploads/2024/01/Samsung-Galaxy-S24-Ultra-a.jpeg',
      'https://mi-srbija.rs/storage/product/images/ac/1a/xiaomi-14-7044.png',
      'https://istyle.rs/media/catalog/product/i/p/iphone_15_pro_black_titanium_pdp_image_position-1__en-us.jpg',
    ],
    id: 2,
  ),
  ShopItemModel(
    title: 'Xiaomi 14',
    image:
        'https://mi-srbija.rs/storage/product/images/ac/1a/xiaomi-14-7044.png',
    discountPercentage: 1.50,
    rating: 4,
    stock: 12,
    category: 'Laptops',
    price: 750,
    brand: 'Xiaomi',
    description:
        'Lorem ipsum dolor sit amet consectetur. Ornare id ullamcorper et non. Massa in urna volutpat sed sagittis eget. Nullam sollicitudin viverra egestas ante. Vitae blandit.',
    images: [
      'https://mi-srbija.rs/storage/product/images/ac/1a/xiaomi-14-7044.png',
      'https://istyle.rs/media/catalog/product/i/p/iphone_15_pro_black_titanium_pdp_image_position-1__en-us.jpg',
      'https://tujenganeventures.co.ke/wp-content/uploads/2024/01/Samsung-Galaxy-S24-Ultra-a.jpeg',
    ],
    id: 3,
  ),
];
