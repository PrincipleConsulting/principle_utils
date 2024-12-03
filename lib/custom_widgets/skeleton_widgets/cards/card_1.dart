import 'package:flutter/material.dart';

import '../shapes/rectangle.dart';

class SkeletonCard1 extends StatelessWidget {
  const SkeletonCard1({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.backgroundColor,
    this.foregroundColor,
  });

  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    final double iconHeight = height == null ? 10 : (height! / 2);
    final double iconWidth = width == null ? 10 : (width! / 2);

    final double rowHeight = height == null ? 10 : (height! / 10);
    final double rowWidth = width == null ? 10 : (width! * 5 / 6);

    final double bigSeparation = height == null ? 10 : (height! / 20);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? const Color(0x00000000),
        borderRadius: BorderRadius.circular(radius ?? 10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SkeletonRectangle(
            height: iconHeight,
            width: iconWidth,
            color: foregroundColor ?? const Color(0x00000000),
            radius: 0,
          ),
          SizedBox(height: bigSeparation),
          SkeletonRectangle(
            height: rowHeight,
            width: rowWidth,
            color: foregroundColor ?? const Color(0x00000000),
            radius: 0,
          ),
        ],
      ),
    );
  }
}
