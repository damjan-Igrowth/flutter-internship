import 'package:flutter/material.dart';

class Phone extends StatelessWidget {
  final String image;

  const Phone({
    super.key,
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
