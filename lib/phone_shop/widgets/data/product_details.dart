class ProductDetails {
  final String title;
  final String brand;
  final double discountPercentage;
  final double price;
  final double rating;
  final String description;
  final String category;
  final int stock;
  final List<String> images;

  ProductDetails({
    required this.category,
    required this.stock,
    required this.title,
    required this.brand,
    required this.discountPercentage,
    required this.price,
    required this.rating,
    required this.description,
    required this.images,
  });
}

ProductDetails productDetails = ProductDetails(
  title: 'Iphone 15 Pro',
  brand: 'Apple',
  discountPercentage: 12.96,
  price: 149.00,
  rating: 4.69,
  description:
      'Lorem ipsum dolor sit amet consectetur. Ornare id ullamcorper et non. Massa in urna volutpat sed sagittis eget. Nullam sollicitudin viverra egestas ante. Vitae blandit.',
  category: 'Smartphones',
  stock: 12,
  images: [
    'https://s3-alpha-sig.figma.com/img/3519/2361/d3a8bbe8f61d686237acaa5cebc92f6e?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Egef9GkweAYOYlPbbrvzC0dqjfnPmXwNMKDU5FEW5cMHhs3WbDzKWF634Chl7Tg30xA8rGv2ulEk2bZ4VepDh4DlM1z8sLIGUsy-~9uxc4YkNdneBjhy32FkP31hEYSAhvebA7p~LRBMpcmbieoNvqrNyrEYufyCEj0aOxglWMRBr4TWsWNLOMfAnkk7w-gR6Qr5Rocjpmx7lWPSmcYLu7bG15u-ivsSMAZKFvjC~Mr-7mEA6pvKgqeKW-e4UATWYB6Caieb47llG8NLCZ0spg8Pz7K8uk6Bs07ZtFTtCG~~jnYG9cQUxVHxA1WzPTo3kU8qm8C~ysLdWf-SWQ4S5Q__',
    'https://s3-alpha-sig.figma.com/img/3519/2361/d3a8bbe8f61d686237acaa5cebc92f6e?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Egef9GkweAYOYlPbbrvzC0dqjfnPmXwNMKDU5FEW5cMHhs3WbDzKWF634Chl7Tg30xA8rGv2ulEk2bZ4VepDh4DlM1z8sLIGUsy-~9uxc4YkNdneBjhy32FkP31hEYSAhvebA7p~LRBMpcmbieoNvqrNyrEYufyCEj0aOxglWMRBr4TWsWNLOMfAnkk7w-gR6Qr5Rocjpmx7lWPSmcYLu7bG15u-ivsSMAZKFvjC~Mr-7mEA6pvKgqeKW-e4UATWYB6Caieb47llG8NLCZ0spg8Pz7K8uk6Bs07ZtFTtCG~~jnYG9cQUxVHxA1WzPTo3kU8qm8C~ysLdWf-SWQ4S5Q__',
    'https://s3-alpha-sig.figma.com/img/3519/2361/d3a8bbe8f61d686237acaa5cebc92f6e?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Egef9GkweAYOYlPbbrvzC0dqjfnPmXwNMKDU5FEW5cMHhs3WbDzKWF634Chl7Tg30xA8rGv2ulEk2bZ4VepDh4DlM1z8sLIGUsy-~9uxc4YkNdneBjhy32FkP31hEYSAhvebA7p~LRBMpcmbieoNvqrNyrEYufyCEj0aOxglWMRBr4TWsWNLOMfAnkk7w-gR6Qr5Rocjpmx7lWPSmcYLu7bG15u-ivsSMAZKFvjC~Mr-7mEA6pvKgqeKW-e4UATWYB6Caieb47llG8NLCZ0spg8Pz7K8uk6Bs07ZtFTtCG~~jnYG9cQUxVHxA1WzPTo3kU8qm8C~ysLdWf-SWQ4S5Q__',
  ],
);
