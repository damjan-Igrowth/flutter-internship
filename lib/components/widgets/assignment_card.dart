import 'package:flutter/material.dart';
import 'package:flutter_internship/components/widgets/chip_component.dart';

class AssignmentCard extends StatelessWidget {
  final String title;
  final String description;
  final String status;

  const AssignmentCard({
    super.key,
    required this.title,
    required this.description,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFFFFFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: const BorderSide(
          color: Color(0xFFC9D2DE),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xFF181E25),
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ChipComponent(chipType: ChipType.flat, label: status),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF5D5D63),
                fontFamily: 'Inter',
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
