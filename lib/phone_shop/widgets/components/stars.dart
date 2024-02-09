import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  final double rating;

  const Stars({
    super.key,
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
