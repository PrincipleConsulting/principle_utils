import 'package:flutter/material.dart';

/// This extension on `TextStyle` provides a fluent and intuitive API for
/// modifying text styles in Flutter. It allows chaining various text styling
/// methods to create custom `TextStyle` objects more efficiently.
///
/// Example usage:
/// ```dart
/// Text(
///   'Hello, FluentTextExtension!',
///   style: TextStyle().bold.size(20).textColor(Colors.blue),
/// );
/// ```
extension FluentTextExtension on TextStyle {
  // Font weight shortcuts
  /// Applies `FontWeight.w100` (thin) to the `TextStyle`.
  TextStyle get thin => weight(FontWeight.w100);

  /// Applies `FontWeight.w200` (extra light) to the `TextStyle`.
  TextStyle get extraLight => weight(FontWeight.w200);

  /// Applies `FontWeight.w300` (light) to the `TextStyle`.
  TextStyle get light => weight(FontWeight.w300);

  /// Applies `FontWeight.normal` (regular) to the `TextStyle`.
  TextStyle get regular => weight(FontWeight.normal);

  /// Applies `FontWeight.w500` (medium) to the `TextStyle`.
  TextStyle get medium => weight(FontWeight.w500);

  /// Applies `FontWeight.w600` (semi-bold) to the `TextStyle`.
  TextStyle get semiBold => weight(FontWeight.w600);

  /// Applies `FontWeight.w700` (bold) to the `TextStyle`.
  TextStyle get bold => weight(FontWeight.w700);

  /// Applies `FontWeight.w800` (extra bold) to the `TextStyle`.
  TextStyle get extraBold => weight(FontWeight.w800);

  /// Applies `FontWeight.w900` (black) to the `TextStyle`.
  TextStyle get black => weight(FontWeight.w900);

  // Font style shortcuts
  /// Applies italic styling to the `TextStyle`.
  TextStyle get italic => style(FontStyle.italic);

  // Text decoration shortcuts
  /// Underlines the text.
  TextStyle get underline => textDecoration(TextDecoration.underline);

  /// Strikes through the text.
  TextStyle get lineThrough => textDecoration(TextDecoration.lineThrough);

  /// Adds an over-line to the text.
  TextStyle get overline => textDecoration(TextDecoration.overline);

  // Custom property methods
  /// Sets the text color.
  TextStyle textColor(Color v) => copyWith(color: v);

  /// Sets the background color for the text.
  TextStyle textBackgroundColor(Color v) => copyWith(backgroundColor: v);

  /// Sets the font size.
  TextStyle size(double v) => copyWith(fontSize: v);

  /// Scales the font size by a given factor.
  TextStyle scale(double v) => copyWith(fontSize: fontSize == null ? 16 * v : fontSize! * v);

  /// Applies a specific font weight.
  TextStyle weight(FontWeight v) => copyWith(fontWeight: v);

  /// Applies a specific font style (e.g., italic).
  TextStyle style(FontStyle v) => copyWith(fontStyle: v);

  /// Sets the letter spacing.
  TextStyle letterSpace(double v) => copyWith(letterSpacing: v);

  /// Sets the word spacing.
  TextStyle wordSpace(double v) => copyWith(wordSpacing: v);

  /// Sets the text baseline.
  TextStyle baseline(TextBaseline v) => copyWith(textBaseline: v);

  /// Sets the line height.
  TextStyle textHeight(double v) => copyWith(height: v);

  /// Sets the locale for the text.
  TextStyle textLocale(Locale v) => copyWith(locale: v);

  /// Sets the foreground paint for the text.
  TextStyle textForeground(Paint v) => copyWith(foreground: v);

  /// Sets the background paint for the text.
  TextStyle textBackground(Paint v) => copyWith(background: v);

  /// Sets the shadow(s) for the text.
  TextStyle textShadows(List<Shadow> v) => copyWith(shadows: v);

  /// Sets the font features for the text.
  TextStyle textFeatures(List<FontFeature> v) => copyWith(fontFeatures: v);

  /// Applies text decoration with optional color, style, and thickness.
  TextStyle textDecoration(
    TextDecoration v, {
    Color? color,
    TextDecorationStyle? style,
    double? thickness,
  }) =>
      copyWith(
        decoration: v,
        decorationColor: color,
        decorationStyle: style,
        decorationThickness: thickness,
      );
}
