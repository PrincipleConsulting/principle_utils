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
  // IPHONE 16 Pro dimensions
  static const double _baseWidth = 402;
  static const double _baseHeight = 874;

  // Logical pixels per centimeter for physical size calculations.
  static const double _cmPerLogicalPx = 38;

  /// Gets the predefined base screen height.
  double get baseHeight => _baseHeight;

  /// Gets the predefined base screen width.
  double get baseWidth => _baseWidth;

  /// Gets the minimum dimension of the base screen.
  double get baseMin => min(_baseWidth, _baseHeight);

  /// Gets the maximum dimension of the base screen.
  double get baseMax => max(_baseWidth, _baseHeight);

  /// Gets the aspect ratio of the base screen (width/height).
  double get baseRatio => _baseWidth / _baseHeight;

  /// Gets the diagonal size of the base screen in logical pixels.
  double get baseDiagonal => sqrt((_baseWidth * _baseWidth) + (_baseHeight * _baseHeight));

  /// Determines if the screen orientation is landscape.
  bool get isLandscape => screenSize.width > screenSize.height;

  /// Gets the screen size in logical pixels.
  Size get screenSize => MediaQuery.sizeOf(this);

  /// Gets the screen height in logical pixels.
  double get screenHeight => screenSize.height;

  /// Gets the screen width in logical pixels.
  double get screenWidth => screenSize.width;

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

  /// Scales the screen width relative to the base height.
  ///
  /// [baseHeight] allows an optional base height to be provided; Otherwise, the base height [_baseHeight] is used.]
  /// If [curve] is provided, the scaling is transformed using the specified curve.
  double scaleBaseHeight({double? baseHeight, Curve? curve}) {
    baseHeight ??= _baseHeight;
    if (curve == null) {
      return (screenHeight) / (baseHeight);
    }
    final scale = (screenHeight) / (baseHeight);
    return curve.transform(scale % 1) + scale.floorToDouble();
  }

  /// Scales the screen width relative to the base width.
  ///
  /// [baseWidth] allows an optional base width to be provided.
  /// If [curve] is provided, the scaling is transformed using the specified curve.
  double scaleBaseWidth({double? baseWidth, Curve? curve}) {
    baseWidth ??= _baseWidth;
    if (curve == null) {
      return (screenWidth) / (baseWidth);
    }
    final scale = (screenWidth) / (baseWidth);
    return curve.transform(scale % 1) + scale.floorToDouble();
  }

  /// Scales the diagonal screen size relative to the base diagonal using a curve.
  ///
  /// [baseDiagonal] allows an optional base diagonal to be provided. Otherwise, the base diagonal [_baseDiagonal] is used.
  /// If [curve] is provided, the scaling is transformed using the specified curve.
  double scaleBaseDiagonal({double? baseDiagonal, Curve? curve}) {
    baseDiagonal ??= this.baseDiagonal;
    if (curve == null) {
      return screenDiagonal / baseDiagonal;
    }
    final scale = screenDiagonal / baseDiagonal;
    return curve.transform(scale % 1) + scale.floorToDouble();
  }

  /// Minimum scale of the screen relative to the base width and height.
  ///
  /// [baseHeight] allows an optional base height to be provided. Otherwise, the base height [_baseHeight] is used.
  /// [baseWidth] allows an optional base width to be provided. Otherwise, the base width [_baseWidth] is used.
  /// If [curve] is provided, the scaling is transformed using the specified curve.
  double scaleBaseMin({double? baseHeight, double? baseWidth, Curve? curve}) {
    baseHeight ??= this.baseHeight;
    baseWidth ??= this.baseWidth;
    if (curve == null) {
      return min(scaleBaseWidth(baseWidth: baseWidth), scaleBaseHeight(baseHeight: baseHeight));
    }
    final scale = min(scaleBaseWidth(baseWidth: baseWidth), scaleBaseHeight(baseHeight: baseHeight));
    return curve.transform(scale % 1) + scale.floorToDouble();
  }

  /// Maximum scale of the screen relative to the base width and height.
  ///
  /// [baseHeight] allows an optional base height to be provided. Otherwise, the base height [_baseHeight] is used.
  /// [baseWidth] allows an optional base width to be provided. Otherwise, the base width [_baseWidth] is used.
  /// [curve] allows an optional curve to be provided for scaling.
  double scaleBaseMax({double? baseHeight, double? baseWidth, Curve? curve}) {
    baseHeight ??= this.baseHeight;
    baseWidth ??= this.baseWidth;
    if (curve == null) {
      return max(scaleBaseWidth(baseWidth: baseWidth), scaleBaseHeight(baseHeight: baseHeight));
    }
    final scale = max(scaleBaseWidth(baseWidth: baseWidth), scaleBaseHeight(baseHeight: baseHeight));
    return curve.transform(scale % 1) + scale.floorToDouble();
  }
}
