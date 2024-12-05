import 'package:flutter/material.dart';

/// An extension on `BuildContext` that provides a responsive utility for selecting
/// values based on the screen width. This makes it easier to handle adaptive layouts
/// and adjust values for different screen sizes.
///
/// Example usage:
/// ```dart
/// double padding = context.responsive<double>(
///   16, // Default value
///   sm: 24, // Small screens
///   md: 32, // Medium screens
///   lg: 40, // Large screens
///   xl: 48, // Extra large screens
/// );
/// ```
///
/// The breakpoints are defined as follows:
/// - `defaultVal`: Used when no specific size matches.
/// - `sm` (small): Applies when the screen width is at least 640px.
/// - `md` (medium): Applies when the screen width is at least 768px.
/// - `lg` (large): Applies when the screen width is at least 1024px.
/// - `xl` (extra large): Applies when the screen width is at least 1280px.
///
extension Screen on BuildContext {
  /// Returns a value of type `T` based on the screen width.
  ///
  /// - [defaultVal] is returned if no specific breakpoint matches.
  /// - [sm], [md], [lg], and [xl] are optional values for small, medium,
  ///   large, and extra large screens, respectively.
  ///
  /// The method determines the screen width using `MediaQuery` and selects
  /// the most appropriate value based on the breakpoints.
  T responsive<T>(
    T defaultVal, {
    T? sm,
    T? md,
    T? lg,
    T? xl,
  }) {
    // Get the screen width from MediaQuery.
    final double wd = MediaQuery.sizeOf(this).width;

    // Determine the appropriate value based on breakpoints.
    return wd >= 1280
        ? (xl ?? lg ?? md ?? sm ?? defaultVal)
        : wd >= 1024
            ? (lg ?? md ?? sm ?? defaultVal)
            : wd >= 768
                ? (md ?? sm ?? defaultVal)
                : wd >= 640
                    ? (sm ?? defaultVal)
                    : defaultVal;
  }
}
