class ShopItem {
  final String title;
  final String image;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String category;
  final double price;

  ShopItem({
    required this.title,
    required this.image,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.category,
    required this.price,
  });
}

final List<ShopItem> shopItems = [
  ShopItem(
    title: 'Iphone 15 Pro',
    image:
        'https://s3-alpha-sig.figma.com/img/3519/2361/d3a8bbe8f61d686237acaa5cebc92f6e?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Egef9GkweAYOYlPbbrvzC0dqjfnPmXwNMKDU5FEW5cMHhs3WbDzKWF634Chl7Tg30xA8rGv2ulEk2bZ4VepDh4DlM1z8sLIGUsy-~9uxc4YkNdneBjhy32FkP31hEYSAhvebA7p~LRBMpcmbieoNvqrNyrEYufyCEj0aOxglWMRBr4TWsWNLOMfAnkk7w-gR6Qr5Rocjpmx7lWPSmcYLu7bG15u-ivsSMAZKFvjC~Mr-7mEA6pvKgqeKW-e4UATWYB6Caieb47llG8NLCZ0spg8Pz7K8uk6Bs07ZtFTtCG~~jnYG9cQUxVHxA1WzPTo3kU8qm8C~ysLdWf-SWQ4S5Q__',
    discountPercentage: 12.44,
    rating: 4.69,
    stock: 12,
    category: 'Smartphones',
    price: 999,
  ),
  ShopItem(
    title: 'Samsung S24',
    image:
        'https://s3-alpha-sig.figma.com/img/6bda/c53e/73747002d112b5221144e5b027cddd77?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=iRKX9LUEvdxSt27dMhdOSsotJjh3aEXlWb9mfzaM5pV-sT0KIRSN-qTauv3rouOMr4bdi~1xNlHFfe7mOReZVFI3ZfOhiU8OgrbJS4eecUaR4BVAP2jYWmLDa3mleNykEvaukTSdJB6WvtdrXroAfXRSlvQ3Kv621hF5EVTjsEMrfYn-TspwxW9dlVhAtmjKLwdgqYLqAe~QXXYlIId1xpk-LDVaFqABQQXdCZb~Z-T~zkACR15l~tEsFh5KUcpQ4gaC6anPYkIxSYVk1JJdg1CsQOjB3IY2YrUC1tekLxR-w-A40OdcTpRzMM0M18X~s10K2ehx-bxtz2jP0PfPdw__',
    discountPercentage: 22.96,
    rating: 5,
    stock: 12,
    category: 'Smartphones',
    price: 899,
  ),
  ShopItem(
    title: 'Xiaomi 14',
    image:
        'https://s3-alpha-sig.figma.com/img/2ec6/d7d8/8e98f319aeb11bc07b94cd0d1e1d2a68?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=O8hqDt1jwCgv74iWeCY2DX~RP30SHxSgTu5zmxzHWYNvE~oFqcNdtbjPzCd9DRia4P5DLu4zL4jQL4NVVetkPD0f1gLB4CqEDu0S0mVpQTfhuYjOEIScOWJNtIyjp9jEsol1DKJKZlGw2myVZaMrPEhLqBnH25abXSTMUenroqb4Fq7LfV~cZodVyjnXSzKh94zZG9AApHjA2iv8X69RQ2h1P21oiCO6pN-XljFuvpgd0pTPCSpc82LKArAUGF90Vl6JDJxJ54OagThAbrZqt-sFSu59dPrSmiDcPZTKHfaZSIlkUR7BJlfnLCiFY-oA5snDYVfIUx~55cH---V5sg__',
    discountPercentage: 1.50,
    rating: 4,
    stock: 12,
    category: 'Laptops',
    price: 750,
  ),
];
