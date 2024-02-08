import 'package:flutter/material.dart';

class Availability extends StatelessWidget {
  final String category;
  final int stock;

  const Availability({
    super.key,
    required this.category,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFFFFFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(
          color: Color(0xFFF1F1F1),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const _CategoryText(),
                const SizedBox(width: 10),
                _Category(category: category),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.location_on, color: Color(0xFF34A4E3)),
                const SizedBox(width: 10),
                _Stock(stock: stock),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _CategoryText extends StatelessWidget {
  const _CategoryText();
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Category',
      style: TextStyle(
        color: Color(0xFF4A4A4A),
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}

class _Category extends StatelessWidget {
  final String category;
  const _Category({required this.category});
  @override
  Widget build(BuildContext context) {
    return Text(
      category,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        color: Color(0xFF34A4E3),
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}

class _Stock extends StatelessWidget {
  final int stock;

  const _Stock({required this.stock});
  @override
  Widget build(BuildContext context) {
    return Text(
      'On stock: $stock',
      style: const TextStyle(
        color: Color(0xFF4A4949),
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}
