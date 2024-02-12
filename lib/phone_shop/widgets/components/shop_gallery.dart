import 'package:flutter/material.dart';

class ShopGallery extends StatelessWidget {
  final List<String> images;
  final EdgeInsetsGeometry? padding;

  const ShopGallery({super.key, required this.images, this.padding});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 328,
      child: ListView.separated(
        padding: padding,
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return _ImageItem(image: images[index]);
        },
        separatorBuilder: (context, index) => const SizedBox(width: 16),
      ),
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
        width: 328,
        height: 328,
        fit: BoxFit.cover,
      ),
    );
  }
}
