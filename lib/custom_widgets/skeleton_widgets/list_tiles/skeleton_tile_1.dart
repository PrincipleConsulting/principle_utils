import 'dart:math';

import 'package:flutter/material.dart';

import '../shapes/barrel.dart';

class SkeletonTile1 extends StatelessWidget {
  const SkeletonTile1({
    super.key,
    required this.width,
    required this.height,
    this.radius,
    this.backgroundColor,
    this.foregroundColor,
    this.padding,
  });

  final double width;
  final double height;

  final EdgeInsets? padding;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    final double section1Height = height * 0.27;
    final double section1Width = width * 0.57;

    final double section1TopPadding = height * 0.06;
    final double section1LeftPadding = width * 0.03;

    final double section2Height = height * 0.38;
    final double section2Width = width * 0.97;

    final double section2TopPadding = height * 0.083;
    final double section2BottomPadding = height * 0.06;
    final double section2LeftRightPadding = width * 0.033;

    final double section3Height = height * 0.07;
    final double section3Width = width * 0.90;

    final double section3BottomPadding = height * 0.07;
    final double section3LeftRightPadding = width * 0.033;

    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor ?? const Color(0x00000000),
        borderRadius: BorderRadius.circular(radius ?? 0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: section1Height,
            width: section1Width,
            margin: EdgeInsets.only(top: section1TopPadding, left: section1LeftPadding),
            child: _ProfileSubSkeleton(
              height: section1Height,
              width: section1Width,
              color: foregroundColor ?? const Color(0x00000000),
            ),
          ),
          Container(
            height: section2Height,
            width: section2Width,
            margin: EdgeInsets.only(
              top: section2TopPadding,
              left: section2LeftRightPadding,
              right: section2LeftRightPadding,
              bottom: section2BottomPadding,
            ),
            child: _BodySubSkeleton(
              height: section2Height,
              width: section2Width,
              color: foregroundColor ?? const Color(0x00000000),
            ),
          ),
          Container(
            height: section3Height,
            width: section3Width,
            margin: EdgeInsets.only(
              left: section3LeftRightPadding,
              right: section3LeftRightPadding,
              bottom: section3BottomPadding,
            ),
            child: _BottomSubSkeleton(
              height: section3Height,
              width: section3Width,
              color: foregroundColor ?? const Color(0x00000000),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileSubSkeleton extends StatelessWidget {
  const _ProfileSubSkeleton({
    super.key,
    required this.height,
    required this.width,
    this.color,
  });

  final double height;
  final double width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final double circleRadius = min(height * 0.98, width * 0.23);

    final double verticalSeparation = height * 0.09;
    final double horizontalSeparation = width * 0.041;

    final double linesHeight = height * 0.26;
    final double linesWidth = width * 0.72;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SkeletonCircle(
          radius: circleRadius,
          color: color ?? const Color(0x00000000),
        ),
        SizedBox(width: horizontalSeparation),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SkeletonRectangle(
              height: linesHeight,
              width: linesWidth * 0.66,
              color: color ?? const Color(0x00000000),
              radius: min(linesHeight, linesWidth) * 0.5,
            ),
            SizedBox(height: verticalSeparation),
            SkeletonRectangle(
              height: linesHeight,
              width: linesWidth,
              color: color ?? const Color(0x00000000),
              radius: min(linesHeight, linesWidth) * 0.5,
            ),
            SizedBox(height: verticalSeparation),
            SkeletonRectangle(
              height: linesHeight,
              width: linesWidth * 0.83,
              color: color ?? const Color(0x00000000),
              radius: min(linesHeight, linesWidth) * 0.5,
            ),
          ],
        ),
      ],
    );
  }
}

class _BodySubSkeleton extends StatelessWidget {
  const _BodySubSkeleton({
    super.key,
    required this.height,
    required this.width,
    this.color,
  });

  final double height;
  final double width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final double verticalSeparation = height * 0.075;

    final double linesHeight = height * 0.19;
    final double linesWidth = width * 1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SkeletonRectangle(
          height: linesHeight,
          width: linesWidth * 0.88,
          color: color ?? const Color(0x00000000),
          radius: min(linesHeight, linesWidth) * 0.5,
        ),
        SizedBox(height: verticalSeparation),
        SkeletonRectangle(
          height: linesHeight,
          width: linesWidth * 0.81,
          color: color ?? const Color(0x00000000),
          radius: min(linesHeight, linesWidth) * 0.5,
        ),
        SizedBox(height: verticalSeparation),
        SkeletonRectangle(
          height: linesHeight,
          width: linesWidth,
          color: color ?? const Color(0x00000000),
          radius: min(linesHeight, linesWidth) * 0.5,
        ),
        SizedBox(height: verticalSeparation),
        SkeletonRectangle(
          height: linesHeight,
          width: linesWidth * 0.73,
          color: color ?? const Color(0x00000000),
          radius: min(linesHeight, linesWidth) * 0.5,
        ),
      ],
    );
  }
}

class _BottomSubSkeleton extends StatelessWidget {
  const _BottomSubSkeleton({
    super.key,
    required this.height,
    required this.width,
    this.color,
  });

  final double height;
  final double width;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final double circleRadius = min(height * 1, width * 0.035);

    final double linesHeight = height * 1;

    final double smallLineWidth = width * 0.11;
    final double mediumLineWidth = width * 0.25;

    final double separation = width * 0.51;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SkeletonCircle(radius: circleRadius, color: color),
        SkeletonCircle(radius: circleRadius, color: color),
        SkeletonCircle(radius: circleRadius, color: color),
        SkeletonRectangle(height: linesHeight, width: smallLineWidth, color: color),
        SizedBox(width: separation),
        SkeletonRectangle(height: linesHeight, width: mediumLineWidth, color: color),
      ],
    );
  }
}
