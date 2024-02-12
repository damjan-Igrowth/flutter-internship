import 'package:flutter/material.dart';

class ShopGallery extends StatelessWidget {
  final List<String> images;
  final EdgeInsetsGeometry padding;

  const ShopGallery({super.key, required this.images, required this.padding});

  @override
  Widget build(BuildContext context) {
    Widget productListView;

    productListView = ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: padding,
          child: _ImageItem(image: images[index]),
        );
      },
    );
    return SizedBox(
      height: 328,
      child: productListView,
    );
  }
}

class _ImageItem extends StatelessWidget {
  final String image;

  const _ImageItem({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        image,
        fit: BoxFit.contain,
      ),
    );
  }
}
