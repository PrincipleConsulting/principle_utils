import 'package:flutter/material.dart';

class SkeletonCircle extends StatelessWidget {
  const SkeletonCircle({
    super.key,
    required this.radius,
    this.color,
  });

  final Color? color;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? const Color(0x00000000),
      ),
    );
  }
}
