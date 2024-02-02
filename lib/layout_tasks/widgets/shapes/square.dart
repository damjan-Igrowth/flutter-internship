import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final double? size;
  final Color? color;
  final Widget? child;

  const Square({
    super.key,
    this.child,
    this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      child: child,
    );
  }
}
