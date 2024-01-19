import 'package:flutter/material.dart';

class AssignmentCard extends StatelessWidget {
  final String title;
  final String description;
  final Widget status;

  const AssignmentCard({
    super.key,
    required this.title,
    required this.description,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: status,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
