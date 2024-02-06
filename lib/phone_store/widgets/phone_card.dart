import 'package:flutter/material.dart';

class PhoneCard extends StatelessWidget {
  final String title;
  final int price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String category;
  final String image;

  const PhoneCard({
    super.key,
    required this.title,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.category,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFFFFFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(
          color: Color(0xFFE2E2E2),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              width: 79.00,
              height: 79.00,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFF3F3F3),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: Color(0xFF181E25),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Inter'),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          category,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Color(0xFF34A4E3),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Inter'),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              '$rating',
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
                                index < rating.ceil()
                                    ? Icons.star
                                    : Icons.star_border,
                                color: index < rating.floor()
                                    ? const Color(0xFFFFC046)
                                    : const Color(0xFFC0C0C0),
                                size: 10,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'On stock: $stock',
                          style: const TextStyle(
                              color: Color(0xFF4A4949),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Inter'),
                        ),
                      ],
                    ),
                    const SizedBox(width: 66),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '-${discountPercentage.toStringAsFixed(2)}%',
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                              color: Color(0xFF43C16E),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Inter'),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          '${price.toStringAsFixed(2)} \$',
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                              color: Color(0xFFE33434),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Inter'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
