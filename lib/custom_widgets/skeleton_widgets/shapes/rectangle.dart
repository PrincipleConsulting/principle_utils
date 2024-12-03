import 'package:flutter/material.dart';

class SkeletonRectangle extends StatelessWidget {
  const SkeletonRectangle({super.key, this.width, this.height, this.color, this.radius});

  final double? width;
  final double? height;
  final Color? color;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color ?? const Color(0x00000000),
        borderRadius: BorderRadius.circular(radius ?? 10),
      ),
    );
  }
}
