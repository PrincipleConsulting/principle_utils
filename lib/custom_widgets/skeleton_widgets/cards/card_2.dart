import 'dart:math';

import 'package:flutter/material.dart';

import '../shapes/rectangle.dart';

class SkeletonCard2 extends StatelessWidget {
  const SkeletonCard2({
    super.key,
    required this.width,
    required this.height,
    this.radius,
    this.backgroundColor,
    this.foregroundColor,
  });

  final double width;
  final double height;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    final double minSize = min(height, width);
    final double mediaHeight = minSize * 0.78;
    final double mediaWidth = minSize * 0.78;

    final double rowHeight = minSize * 0.13;
    final double rowWidth = minSize * 0.78;

    final double bigSeparation = minSize * 0.08;

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? const Color(0x00000000),
        borderRadius: BorderRadius.circular(radius ?? 0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SkeletonRectangle(
            height: mediaHeight,
            width: mediaWidth,
            color: foregroundColor ?? const Color(0x00000000),
            radius: radius,
          ),
          SizedBox(height: bigSeparation),
          SkeletonRectangle(
            height: rowHeight,
            width: rowWidth,
            color: foregroundColor ?? const Color(0x00000000),
            radius: radius,
          ),
        ],
      ),
    );
  }
}
