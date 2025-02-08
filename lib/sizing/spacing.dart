/// A utility class that defines a standardized set of spacing constants for Flutter applications.
///
/// The `TWSpace` class provides a comprehensive collection of predefined spacing values used for
/// padding, margins, and visual separation between UI elements. All values are defined in **logical pixels**,
/// ensuring that your app's layout scales appropriately on different devices and screen densities.
///
/// ### Spacing Categories:
/// - **Small Spacing**: Ideal for tight gaps, minimal padding, or subtle visual separations.
/// - **Medium Spacing**: Suitable for regular content separation, standard padding, or margins between elements.
/// - **Large Spacing**: Used for pronounced gaps, major section dividers, or large margins.
///
/// ### Example Usage:
/// ```dart
/// Container(
///   padding: EdgeInsets.all(TWSpace.sp16), // Medium spacing around content
///   child: Text('Hello, World!'),
/// );
/// ```
///
/// ### Note:
/// - All spacing values are expressed in **logical pixels** (device-independent units).
/// - This class is not meant to be instantiated or extended.
abstract final class TWSpace {
  // Small Spacing Values

  /// The smallest spacing value (4 logical pixels), suitable for tight spaces.
  static const double sp4 = 4;

  /// A slightly larger spacing value (5 logical pixels).
  static const double sp5 = 5;

  /// A small spacing value (6 logical pixels) ideal for minor padding.
  static const double sp6 = 6;

  /// A small spacing value (7 logical pixels) for subtle separations.
  static const double sp7 = 7;

  /// A common spacing value (8 logical pixels) often used for small margins or padding.
  static const double sp8 = 8;

  /// A small gap of 10 logical pixels.
  static const double sp10 = 10;

  /// Standard small spacing (12 logical pixels), useful for buttons or compact elements.
  static const double sp12 = 12;

  /// A medium-small spacing value (14 logical pixels) for slight separation.
  static const double sp14 = 14;

  // Medium Spacing Values

  /// Medium spacing for balanced padding or margin (16 logical pixels).
  static const double sp16 = 16;

  /// A medium spacing value (18 logical pixels) often used for grouping content.
  static const double sp18 = 18;

  /// Standard medium spacing (20 logical pixels) for regular element separation.
  static const double sp20 = 20;

  /// A slightly larger medium spacing value (22 logical pixels) for added breathing room.
  static const double sp22 = 22;

  /// Common medium spacing (24 logical pixels) used consistently across layouts.
  static const double sp24 = 24;

  /// A medium spacing value (26 logical pixels) for extra padding or separation.
  static const double sp26 = 26;

  // Large Spacing Values

  /// Large spacing for major sections or significant margins (48 logical pixels).
  static const double sp48 = 48;

  /// A slightly larger spacing value (50 logical pixels) for prominent separations.
  static const double sp50 = 50;

  /// Very large spacing for major UI divisions (96 logical pixels).
  static const double sp96 = 96;

  /// An extra-large spacing value (98 logical pixels) for significant padding or margins.
  static const double sp98 = 98;
}
