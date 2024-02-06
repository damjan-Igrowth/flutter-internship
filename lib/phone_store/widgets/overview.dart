import 'package:flutter/material.dart';

class CategoryStrings {
  static const String smartphones = 'Smartphones';
  static const String laptops = 'Laptops';
  static const String videogames = 'Videogames';
  static const String audio = 'Audio';
  static const String appliances = 'Appliances';
}

class Overview extends StatelessWidget {
  final String productName;
  final String category;
  final String discount;
  final String price;
  final double reviewScore;
  final String description;

  const Overview({
    super.key,
    required this.productName,
    required this.category,
    required this.discount,
    required this.price,
    required this.reviewScore,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  category,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFF34A4E3),
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                Text(
                  '$price \$',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Color(0xFFE33434),
                    fontFamily: 'Inter',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  productName,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFF121212),
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                Text(
                  '-$discount%',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Color(0xFF43C16E),
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  '$reviewScore',
                  style: const TextStyle(
                      color: Color(0xFFFFC046),
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal),
                ),
                const SizedBox(width: 4),
                ...List.generate(
                  5,
                  (index) => Icon(
                    index < reviewScore.ceil() ? Icons.star : Icons.star_border,
                    color: index < reviewScore.floor()
                        ? const Color(0xFFFFC046)
                        : const Color(0xFFC0C0C0),
                    size: 10,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                description,
                style: const TextStyle(
                    color: Color(0xFF4A4A4A),
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
