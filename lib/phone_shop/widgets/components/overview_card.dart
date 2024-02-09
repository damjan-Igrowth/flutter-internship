import 'package:flutter/material.dart';
import 'package:flutter_internship/phone_shop/widgets/components/stars.dart';

class OverviewCard extends StatelessWidget {
  final String title;
  final String brand;
  final double discountPercentage;
  final double price;
  final double rating;
  final String description;

  const OverviewCard({
    super.key,
    required this.title,
    required this.brand,
    required this.discountPercentage,
    required this.price,
    required this.rating,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _Brand(brand: brand),
                      const SizedBox(height: 8),
                      _Title(title: title),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _Price(price: price),
                    const SizedBox(height: 8),
                    _Discount(discountPercentage: discountPercentage),
                  ],
                )
              ],
            ),
            const SizedBox(height: 8),
            Stars(rating: rating),
            const SizedBox(height: 16),
            _Description(description: description),
          ],
        ),
      ),
    );
  }
}

class _Brand extends StatelessWidget {
  final String brand;

  const _Brand({required this.brand});

  @override
  Widget build(BuildContext context) {
    return Text(
      brand,
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
        fontStyle: FontStyle.normal,
      ),
    );
  }
}
