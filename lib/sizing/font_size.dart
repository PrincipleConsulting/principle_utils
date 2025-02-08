/// A utility class that defines a collection of standardized font size constants.
///
/// The `TWFontSize` class provides a set of predefined font sizes to help maintain
/// consistent typography and a clear visual hierarchy across your Flutter application.
/// These constants can be used with Flutter's `TextStyle` to specify font sizes for headings,
/// body text, captions, and other textual elements.
///
/// All font sizes are defined in **logical pixels**, which ensures that your typography
/// scales appropriately across various device screen sizes and resolutions.
///
/// ### Example Usage:
/// ```dart
/// Text(
///   'Hello, world!',
///   style: TextStyle(
///     fontSize: TWFontSize.textBaseFontSize, // Base font size (16 logical pixels)
///   ),
/// );
/// ```
///
/// ### Note:
/// - This class is not meant to be instantiated or extended.
/// - The values here represent logical pixels, not physical pixels.
abstract final class TWFontSize {
  /// Font size for extra small text (12 logical pixels).
  static const double textXsFontSize = 12;

  /// Font size for small text (14 logical pixels).
  static const double textSmFontSize = 14;

  /// Font size for base (normal) text (16 logical pixels).
  static const double textBaseFontSize = 16;

  /// Font size for large text (18 logical pixels).
  static const double textLgFontSize = 18;

  /// Font size for extra large text (20 logical pixels).
  static const double textXlFontSize = 20;

  /// Font size for 2x extra large text (24 logical pixels).
  static const double text2XlFontSize = 24;

  /// Font size for 3x extra large text (30 logical pixels).
  static const double text3XlFontSize = 30;

  /// Font size for 4x extra large text (36 logical pixels).
  static const double text4XlFontSize = 36;

  /// Font size for 5x extra large text (48 logical pixels).
  static const double text5XlFontSize = 48;

  /// Font size for 6x extra large text (60 logical pixels).
  static const double text6XlFontSize = 60;

  /// Font size for 7x extra large text (72 logical pixels).
  static const double text7XlFontSize = 72;

  /// Font size for 8x extra large text (96 logical pixels).
  static const double text8XlFontSize = 96;

  /// Font size for 9x extra large text (128 logical pixels).
  static const double text9XlFontSize = 128;
}
