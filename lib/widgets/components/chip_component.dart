import 'package:flutter/material.dart';

class ChipComponentClass extends StatelessWidget {
  const ChipComponentClass({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        //1
        Chip(
          backgroundColor: Colors.grey,
          label: Text(
            'Work in Progress',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(width: 4),
        //2
        Chip(
          backgroundColor: Colors.grey,
          label: Row(
            children: [
              Text(
                'Work in Progress',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              SizedBox(width: 4),
              Icon(
                Icons.more_horiz,
                color: Colors.black,
                size: 18,
              ),
            ],
          ),
        ),
        SizedBox(width: 4),
        //3
        Chip(
          backgroundColor: Colors.white,
          label: Row(
            children: [
              Text(
                'New',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              SizedBox(width: 4),
              Icon(
                Icons.circle,
                color: Colors.red,
                size: 12,
              ),
            ],
          ),
        ),
        SizedBox(width: 4),
        //4
        Chip(
          backgroundColor: Colors.white,
          label: Text(
            'Old collection',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(width: 4),
      ],
    );
  }
}
