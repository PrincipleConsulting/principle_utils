import 'dart:math';

import 'package:flutter/cupertino.dart';

/// An extension on `BuildContext` to provide utilities for screen size,
/// orientation, and scaling calculations in Flutter applications.
///
/// This extension simplifies access to screen dimensions, aspect ratios,
/// and scaling factors based on a predefined base screen size.
///
/// Example usage:
/// ```dart
/// double widthFraction = context.widthPct(0.5); // 50% of the screen width
/// double scaledHeight = context.scaleBaseHeight();
/// bool isLandscape = context.isLandscape;
/// ```
extension SizeContext on BuildContext {
  // Predefined base screen dimensions for scaling calculations.
  static const double _baseWidth = 435;
  static const double _baseHeight = 845;

  // Logical pixels per centimeter for physical size calculations.
  static const double _cmPerLogicalPx = 38;

  /// Gets the predefined base screen width.
  double get baseWidth => _baseWidth;

  /// Gets the predefined base screen height.
  double get baseHeight => _baseHeight;

  /// Determines if the screen orientation is landscape.
  bool get isLandscape => screenSize.width > screenSize.height;

  /// Gets the screen size in logical pixels.
  Size get screenSize => MediaQuery.sizeOf(this);

  /// Gets the screen width in logical pixels.
  double get screenWidth => screenSize.width;

  /// Gets the screen height in logical pixels.
  double get screenHeight => screenSize.height;

  /// Gets the diagonal screen size in logical pixels.
  double get screenDiagonal {
    final Size s = screenSize;
    return sqrt((s.width * s.width) + (s.height * s.height));
  }

  /// Gets the screen aspect ratio (width/height).
  double get screenAspectRatio => screenSize.aspectRatio;

  /// Calculates a fraction of the screen width in logical pixels.
  ///
  /// [fraction] must be between 0 and 1, where 1 represents 100% of the screen width.
  double widthPct(double fraction) => fraction * screenWidth;

  /// Calculates a fraction of the screen height in logical pixels.
  ///
  /// [fraction] must be between 0 and 1, where 1 represents 100% of the screen height.
  double heightPct(double fraction) => fraction * screenHeight;

  /// Gets the screen width in centimeters.
  double get widthCM => screenWidth / _cmPerLogicalPx;

  /// Gets the screen height in centimeters.
  double get heightCM => screenHeight / _cmPerLogicalPx;

  /// Gets the diagonal screen size in centimeters.
  double get diagonalCM => screenDiagonal / _cmPerLogicalPx;

  /// Gets the diagonal size of the base screen in logical pixels.
  double get baseDiagonal => sqrt((_baseWidth * _baseWidth) + (_baseHeight * _baseHeight));

  /// Scales the screen width relative to the base width.
  ///
  /// [diff] allows an optional adjustment to the screen width.
  /// If [curve] is provided, the scaling is transformed using the specified curve.
  double scaleBaseWidth({double diff = 0, Curve? curve}) {
    if (curve == null) {
      return (screenWidth - diff) / (_baseWidth);
    }
    final scale = (screenWidth - diff) / (_baseWidth);
    return curve.transform(scale % 1) + scale.floorToDouble();
  }

  /// Scales the screen height relative to the base height.
  ///
  /// [diff] allows an optional adjustment to the screen height.
  /// [hasAppBar] and [hasBottomBar] add offsets for typical UI elements.
  /// If [curve] is provided, the scaling is transformed using the specified curve.
  double scaleBaseHeight({double diff = 0, bool? hasAppBar, bool? hasBottomBar, Curve? curve}) {
    if (hasAppBar == true) {
      diff += 56; // Default app bar height
    }
    if (hasBottomBar == true) {
      diff += 56; // Default bottom bar height
    }
    if (curve == null) {
      return (screenHeight - diff) / (_baseHeight);
    }

    final scale = (screenHeight - diff) / (_baseHeight);
    return curve.transform(scale % 1) + scale.floorToDouble();
  }

  /// Scales the diagonal screen size relative to the base diagonal.
  double get scaleBaseDiagonal => screenDiagonal / baseDiagonal;

  /// Scales the diagonal screen size relative to the base diagonal using a curve.
  ///
  /// If [curve] is provided, the scaling is transformed using the specified curve.
  double scaleBaseDiagonalWithCurve({Curve? curve}) {
    final scale = screenDiagonal / baseDiagonal;
    if (curve == null) {
      return scale;
    }
    return curve.transform(scale % 1) + scale.floorToDouble();
  }
}
