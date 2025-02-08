import 'dart:math';

import 'package:flutter/cupertino.dart';

/// An extension on `BuildContext` to provide utilities for screen size,
/// orientation, and scaling calculations in Flutter applications.
///
/// This extension simplifies access to screen dimensions, aspect ratios,
/// and scaling factors based on a predefined base screen size.
///
/// ## Features
/// - Access to screen dimensions (width, height, diagonal).
/// - Screen orientation detection (landscape or portrait).
/// - Scaling utilities relative to a base screen size.
/// - Physical size calculations (e.g., screen dimensions in centimeters).
///
/// ## Example Usage
/// ```dart
/// double widthFraction = context.widthPct(0.5); // 50% of the screen width
/// double scaledHeight = context.scaleBaseHeight(); // Scale height relative to base
/// bool isLandscape = context.isLandscape; // Check if in landscape mode
/// ```
extension SizeContext on BuildContext {
  //----------------------------------------------------------------------------
  // Base Screen Dimensions
  //----------------------------------------------------------------------------

  /// Predefined base screen width (iPhone 16 Pro width in logical pixels).
  static const double _baseWidth = 402;

  /// Predefined base screen height (iPhone 16 Pro height in logical pixels).
  static const double _baseHeight = 874;

  /// Logical pixels per centimeter for physical size calculations.
  static const double _cmPerLogicalPx = 38;

  /// Gets the predefined base screen height.
  double get baseHeight => _baseHeight;

  /// Gets the predefined base screen width.
  double get baseWidth => _baseWidth;

  /// Gets the minimum dimension of the base screen (width or height).
  double get baseMin => min(_baseWidth, _baseHeight);

  /// Gets the maximum dimension of the base screen (width or height).
  double get baseMax => max(_baseWidth, _baseHeight);

  /// Gets the aspect ratio of the base screen (width / height).
  double get baseRatio => _baseWidth / _baseHeight;

  /// Gets the diagonal size of the base screen in logical pixels.
  double get baseDiagonal => sqrt((_baseWidth * _baseWidth) + (_baseHeight * _baseHeight));

  //----------------------------------------------------------------------------
  // Screen Orientation and Dimensions
  //----------------------------------------------------------------------------

  /// Determines if the screen orientation is landscape.
  ///
  /// Returns `true` if the screen width is greater than the screen height.
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

  /// Gets the screen aspect ratio (width / height).
  double get screenAspectRatio => screenSize.aspectRatio;

  //----------------------------------------------------------------------------
  // Screen Size Utilities
  //----------------------------------------------------------------------------

  /// Calculates a fraction of the screen width in logical pixels.
  ///
  /// - [fraction]: A value between 0 and 1, where 1 represents 100% of the screen width.
  ///
  /// ```dart
  /// double halfWidth = context.widthPct(0.5); // 50% of screen width
  /// ```
  double widthPct(double fraction) => fraction * screenWidth;

  /// Calculates a fraction of the screen height in logical pixels.
  ///
  /// - [fraction]: A value between 0 and 1, where 1 represents 100% of the screen height.
  ///
  /// ```dart
  /// double quarterHeight = context.heightPct(0.25); // 25% of screen height
  /// ```
  double heightPct(double fraction) => fraction * screenHeight;

  //----------------------------------------------------------------------------
  // Physical Size Calculations
  //----------------------------------------------------------------------------

  /// Gets the screen width in centimeters.
  double get widthCM => screenWidth / _cmPerLogicalPx;

  /// Gets the screen height in centimeters.
  double get heightCM => screenHeight / _cmPerLogicalPx;

  /// Gets the diagonal screen size in centimeters.
  double get diagonalCM => screenDiagonal / _cmPerLogicalPx;

  //----------------------------------------------------------------------------
  // Scaling Utilities
  //----------------------------------------------------------------------------

  /// Scales the screen height relative to the base height.
  ///
  /// - [baseHeight]: Optional base height for scaling. Defaults to [_baseHeight].
  /// - [curve]: Optional curve to transform the scaling factor.
  ///
  /// ```dart
  /// double scaledHeight = context.scaleBaseHeight(); // Scale height relative to base
  /// double curvedScale = context.scaleBaseHeight(curve: Curves.easeInOut); // Apply curve
  /// ```
  double scaleBaseHeight({double? baseHeight, Curve? curve}) {
    baseHeight ??= _baseHeight;
    if (curve == null) {
      return screenHeight / baseHeight;
    }
    final scale = screenHeight / baseHeight;
    return curve.transform(scale % 1) + scale.floorToDouble();
  }

  /// Scales the screen width relative to the base width.
  ///
  /// - [baseWidth]: Optional base width for scaling. Defaults to [_baseWidth].
  /// - [curve]: Optional curve to transform the scaling factor.
  ///
  /// ```dart
  /// double scaledWidth = context.scaleBaseWidth(); // Scale width relative to base
  /// double curvedScale = context.scaleBaseWidth(curve: Curves.easeIn); // Apply curve
  /// ```
  double scaleBaseWidth({double? baseWidth, Curve? curve}) {
    baseWidth ??= _baseWidth;
    if (curve == null) {
      return screenWidth / baseWidth;
    }
    final scale = screenWidth / baseWidth;
    return curve.transform(scale % 1) + scale.floorToDouble();
  }

  /// Scales the diagonal screen size relative to the base diagonal.
  ///
  /// - [baseDiagonal]: Optional base diagonal for scaling. Defaults to [baseDiagonal].
  /// - [curve]: Optional curve to transform the scaling factor.
  ///
  /// ```dart
  /// double scaledDiagonal = context.scaleBaseDiagonal(); // Scale diagonal relative to base
  /// ```
  double scaleBaseDiagonal({double? baseDiagonal, Curve? curve}) {
    baseDiagonal ??= this.baseDiagonal;
    if (curve == null) {
      return screenDiagonal / baseDiagonal;
    }
    final scale = screenDiagonal / baseDiagonal;
    return curve.transform(scale % 1) + scale.floorToDouble();
  }

  /// Calculates the minimum scale of the screen relative to the base width and height.
  ///
  /// - [baseHeight]: Optional base height for scaling. Defaults to [_baseHeight].
  /// - [baseWidth]: Optional base width for scaling. Defaults to [_baseWidth].
  /// - [curve]: Optional curve to transform the scaling factor.
  ///
  /// ```dart
  /// double minScale = context.scaleBaseMin(); // Minimum scale relative to base
  /// ```
  double scaleBaseMin({double? baseHeight, double? baseWidth, Curve? curve}) {
    baseHeight ??= this.baseHeight;
    baseWidth ??= this.baseWidth;
    if (curve == null) {
      return min(scaleBaseWidth(baseWidth: baseWidth), scaleBaseHeight(baseHeight: baseHeight));
    }
    final scale = min(scaleBaseWidth(baseWidth: baseWidth), scaleBaseHeight(baseHeight: baseHeight));
    return curve.transform(scale % 1) + scale.floorToDouble();
  }

  /// Calculates the maximum scale of the screen relative to the base width and height.
  ///
  /// - [baseHeight]: Optional base height for scaling. Defaults to [_baseHeight].
  /// - [baseWidth]: Optional base width for scaling. Defaults to [_baseWidth].
  /// - [curve]: Optional curve to transform the scaling factor.
  ///
  /// ```dart
  /// double maxScale = context.scaleBaseMax(); // Maximum scale relative to base
  /// ```
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
