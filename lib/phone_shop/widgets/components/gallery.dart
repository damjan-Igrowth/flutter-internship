import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  final List<String> images;

  const Gallery({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    Widget productListView;

    productListView = ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 20),
          child: _ImageItem(
            image: images[index],
          ),
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
    return Container(
      width: 328,
      height: 328,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFF3F3F3),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.network(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
