import 'package:flutter/material.dart';

class CategoryStrings {
  static const String smartphones = 'Smartphones';
  static const String laptops = 'Laptops';
  static const String videogames = 'Videogames';
  static const String audio = 'Audio';
  static const String appliances = 'Appliances';
}

class PhoneCard extends StatelessWidget {
  final String image;
  final String productName;
  final String category;
  final String stars;
  final String discount;
  final String price;
  final double reviewScore;

  const PhoneCard({
    super.key,
    required this.image,
    required this.price,
    required this.productName,
    required this.category,
    required this.discount,
    required this.stars,
    required this.reviewScore,
  });

  @override
  Widget build(BuildContext context) {
    double maxWidth = 149.413;

    return FittedBox(
      child: Card(
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
                width: 79,
                height: 79,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFF3F3F3),
                    width: 1,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    image,
                    width: maxWidth,
                    height: maxWidth,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
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
                                  index < reviewScore.ceil()
                                      ? Icons.star
                                      : Icons.star_border,
                                  color: index < reviewScore.floor()
                                      ? const Color(0xFFFFC046)
                                      : const Color(0xFFC0C0C0),
                                  size: 10,
                                ),
                              ),
                            ],
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
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
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
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
