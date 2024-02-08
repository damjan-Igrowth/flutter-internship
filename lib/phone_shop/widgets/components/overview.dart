import 'package:flutter/material.dart';

class Overview extends StatelessWidget {
  final String title;
  final String category;
  final double discountPercentage;
  final double price;
  final double rating;
  final String description;

  const Overview({
    super.key,
    required this.title,
    required this.category,
    required this.discountPercentage,
    required this.price,
    required this.rating,
    required this.description,
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
                _Category(category: category),
                _Price(price: price),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _Title(title: title),
                _Discount(discountPercentage: discountPercentage),
              ],
            ),
            const SizedBox(height: 8),
            _Stars(rating: rating),
            const SizedBox(height: 16),
            _Description(description: description),
          ],
        ),
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

class _Price extends StatelessWidget {
  final double price;

  const _Price({
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '${price.toStringAsFixed(2)} \$',
      textAlign: TextAlign.right,
      style: const TextStyle(
        color: Color(0xFFE33434),
        fontSize: 16,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        fontFamily: 'Inter',
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String title;

  const _Title({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        color: Color(0xFF121212),
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}

class _Discount extends StatelessWidget {
  final double discountPercentage;

  const _Discount({
    required this.discountPercentage,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '-${discountPercentage.toStringAsFixed(2)}%',
      textAlign: TextAlign.right,
      style: const TextStyle(
        color: Color(0xFF43C16E),
        fontSize: 12,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        fontFamily: 'Inter',
      ),
    );
  }
}

class _Stars extends StatelessWidget {
  final double rating;

  const _Stars({
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$rating',
          style: const TextStyle(
            color: Color(0xFFFFC046),
            fontFamily: 'Poppins',
            fontSize: 12,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
          ),
        ),
        const SizedBox(width: 4),
        ...List.generate(
          5,
          (index) => Icon(
            index < rating.ceil() ? Icons.star : Icons.star_border,
            color: index < rating.floor()
                ? const Color(0xFFFFC046)
                : const Color(0xFFC0C0C0),
            size: 10,
          ),
        ),
      ],
    );
  }
}

class _Description extends StatelessWidget {
  final String description;

  const _Description({required this.description});
  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(
          color: Color(0xFF4A4A4A),
          fontFamily: 'Inter',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal),
    );
  }
}
