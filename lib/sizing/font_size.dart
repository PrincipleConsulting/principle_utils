/// A utility class for defining standard font sizes and line heights.
///
/// The `FontSize` class provides predefined constants for font sizes and line heights,
/// which are useful for maintaining consistency and readability across text elements in your app.
/// These constants are typically used for defining text styles such as headings, body text,
/// captions, and other typographic elements.
///
/// ### Example Usage:
/// ```dart
/// Text(
///   'Hello, world!',
///   style: TextStyle(
///     fontSize: FontSize.textBaseFontSize, // Use base font size (16px)
///     height: FontSize.textBaseLineHeight, // Use base line height
///   ),
/// );
/// ```
///
/// ### Note:
/// These values are based on logical pixels, ensuring consistent typography across various screen sizes.
abstract final class FontSize {
  /// Font size for extra small text (12px)
  static const double textXsFontSize = 12;

  /// Line height for extra small text
  static const double textXsLineHeight = 1.33;

  /// Font size for small text (14px)
  static const double textSmFontSize = 14;

  /// Line height for small text
  static const double textSmLineHeight = 1.43;

  /// Font size for base (normal) text (16px)
  static const double textBaseFontSize = 16;

  /// Line height for base text
  static const double textBaseLineHeight = 1.5;

  /// Font size for large text (18px)
  static const double textLgFontSize = 18;

  /// Line height for large text
  static const double textLgLineHeight = 1.56;

  /// Font size for extra large text (20px)
  static const double textXlFontSize = 20;

  /// Line height for extra large text
  static const double textXlLineHeight = 1.75;

  /// Font size for 2x extra large text (24px)
  static const double text2XlFontSize = 24;

  /// Line height for 2x extra large text
  static const double text2XlLineHeight = 2;

  /// Font size for 3x extra large text (30px)
  static const double text3XlFontSize = 30;

  /// Line height for 3x extra large text
  static const double text3XlLineHeight = 2.25;

  /// Font size for 4x extra large text (36px)
  static const double text4XlFontSize = 36;

  /// Line height for 4x extra large text
  static const double text4XlLineHeight = 2.5;

  /// Font size for 5x extra large text (48px)
  static const double text5XlFontSize = 48;

  /// Line height for 5x extra large text
  static const double text5XlLineHeight = 1;

  /// Font size for 6x extra large text (60px)
  static const double text6XlFontSize = 60;

  /// Line height for 6x extra large text
  static const double text6XlLineHeight = 1;

  /// Font size for 7x extra large text (72px)
  static const double text7XlFontSize = 72;

  /// Line height for 7x extra large text
  static const double text7XlLineHeight = 1;

  /// Font size for 8x extra large text (96px)
  static const double text8XlFontSize = 96;

  /// Line height for 8x extra large text
  static const double text8XlLineHeight = 1;

  /// Font size for 9x extra large text (128px)
  static const double text9XlFontSize = 128;

  /// Line height for 9x extra large text
  static const double text9XlLineHeight = 1;
}
