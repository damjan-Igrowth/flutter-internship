import 'package:flutter/material.dart';

class CategoryStrings {
  static const String smartphones = 'Smartphones';
  static const String laptops = 'Laptops';
  static const String videogames = 'Videogames';
  static const String audio = 'Audio';
  static const String appliances = 'Appliances';
}

class PhoneTile extends StatelessWidget {
  final String image;
  final String productName;
  final double reviewScore;
  final String discount;
  final String price;

  const PhoneTile({
    super.key,
    required this.image,
    required this.productName,
    required this.reviewScore,
    required this.discount,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading:
            Image.asset(image, fit: BoxFit.fitHeight, height: double.infinity),
        title: Text(productName, overflow: TextOverflow.ellipsis),
        titleTextStyle: const TextStyle(
            color: Color(0xFF181E25),
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
            fontFamily: 'Inter'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              CategoryStrings.smartphones,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
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
                    index < reviewScore.ceil() ? Icons.star : Icons.star_border,
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
        trailing: Column(
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
    );
  }
}
