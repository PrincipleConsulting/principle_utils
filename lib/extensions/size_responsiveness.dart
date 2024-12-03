import 'dart:math';

import 'package:flutter/cupertino.dart';

extension SizeContext on BuildContext {
  static const double _baseWidth = 435;
  static const double _baseHeight = 845;

  static const double _cmPerLogicalPx = 38;

  double get baseWidth => _baseWidth;
  double get baseHeight => _baseHeight;

  /// Returns if Orientation is landscape
  bool get isLandscape => screenSize.width > screenSize.height;

  /// Returns screen size in pixels
  Size get screenSize => MediaQuery.sizeOf(this);

  /// Returns same as MediaQuery.of(context).size.width
  double get screenWidth => screenSize.width;

  /// Returns same as MediaQuery.of(context).height
  double get screenHeight => screenSize.height;

  /// Returns diagonal screen pixels
  double get screenDiagonal {
    final Size s = screenSize;
    return sqrt((s.width * s.width) + (s.height * s.height));
  }

  double get screenAspectRatio => screenSize.aspectRatio;

  /// Returns fraction (0-1) of screen width in pixels
  double widthPct(double fraction) => fraction * screenWidth;

  /// Returns fraction (0-1) of screen height in pixels
  double heightPct(double fraction) => fraction * screenHeight;

  double get widthCM => screenWidth / _cmPerLogicalPx;
  double get heightCM => screenHeight / _cmPerLogicalPx;
  double get diagonalCM => screenDiagonal / _cmPerLogicalPx;

  double get baseDiagonal => sqrt((_baseWidth * _baseWidth) + (_baseHeight * _baseHeight));

  double scaleBaseWidth({double diff = 0, Curve? curve}) {
    if (curve == null) {
      return (screenWidth - diff) / (_baseWidth);
    }
    final scale = (screenWidth - diff) / (_baseWidth);
    return curve.transform(scale % 1) + scale.floorToDouble();
  }

  double scaleBaseHeight({double diff = 0, bool? hasAppBar, bool? hasBottomBar, Curve? curve}) {
    if (hasAppBar == true) {
      diff += 56;
    }
    if (hasBottomBar == true) {
      diff += 56;
    }
    if (curve == null) {
      return (screenHeight - diff) / (_baseHeight);
    }

    final scale = (screenHeight - diff) / (_baseHeight);
    return curve.transform(scale % 1) + scale.floorToDouble();
  }

  double get scaleBaseDiagonal => screenDiagonal / baseDiagonal;

  double scaleBaseDiagonalWithCurve({Curve? curve}) {
    final scale = screenDiagonal / baseDiagonal;
    if (curve == null) {
      return scale;
    }
    return curve.transform(scale % 1) + scale.floorToDouble();
  }
}
