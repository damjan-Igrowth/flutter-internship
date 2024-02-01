import 'package:flutter/material.dart';

enum Company { apple, samsung, xiaomi, realme, oneplus }

enum Category { smartphones, laptops, videogames, audio, appliances }

class PhoneCard extends StatelessWidget {
  final String image;
  final String productName;
  final Company? company;
  final Category category;
  final String stars;
  final String discount;
  final String price;

  const PhoneCard({
    super.key,
    required this.image,
    required this.price,
    required this.productName,
    this.company,
    required this.category,
    required this.discount,
    required this.stars,
  });

  @override
  Widget build(BuildContext context) {
    double maxWidth = 149.413;

    return Card(
      clipBehavior: Clip.hardEdge,
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
            Image.asset(image, width: maxWidth, fit: BoxFit.contain),
            const SizedBox(width: 12),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
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
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          category.toString(),
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Color(0xFF34A4E3),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Inter'),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          stars,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Color(0xFF4A4949),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Inter'),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'On stock: 12',
                          style: TextStyle(
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
                          discount,
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
                          price,
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
