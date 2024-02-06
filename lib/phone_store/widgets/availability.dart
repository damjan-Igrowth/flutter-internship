import 'package:flutter/material.dart';

class CategoryStrings {
  static const String smartphones = 'Smartphones';
  static const String laptops = 'Laptops';
  static const String videogames = 'Videogames';
  static const String audio = 'Audio';
  static const String appliances = 'Appliances';
}

class Availability extends StatelessWidget {
  final String category;

  const Availability({super.key, required this.category});

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
                const Text(
                  'Category',
                  style: TextStyle(
                    color: Color(0xFF4A4A4A),
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
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
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Icon(Icons.location_on, color: Color(0xFF34A4E3)),
                SizedBox(width: 10),
                Text(
                  'On stock: 12',
                  style: TextStyle(
                    color: Color(0xFF4A4949),
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
