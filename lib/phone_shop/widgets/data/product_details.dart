class ProductDetails {
  final String title;
  final String brand;
  final double discountPercentage;
  final double price;
  final double rating;
  final String description;

  ProductDetails({
    required this.title,
    required this.brand,
    required this.discountPercentage,
    required this.price,
    required this.rating,
    required this.description,
  });
}

class ShopSectionContent {
  static ProductDetails getProductDetails() {
    return ProductDetails(
      title: 'Iphone 15 Pro',
      brand: 'Apple',
      discountPercentage: 12.96,
      price: 149.00,
      rating: 4.69,
      description:
          'Lorem ipsum dolor sit amet consectetur. Ornare id ullamcorper et non. Massa in urna volutpat sed sagittis eget. Nullam sollicitudin viverra egestas ante. Vitae blandit.',
    );
  }
}

ProductDetails productDetails = ShopSectionContent.getProductDetails();
