import 'package:flutter/material.dart';

/// A fluent extension on [TextStyle] that enables method chaining for building
/// text styles in a declarative manner.
///
/// This extension provides chainable methods for all [TextStyle] properties,
/// along with semantic shortcuts for common typographic modifications.
///
/// ## Usage
///
/// ```dart
/// const TextStyle().bold.size(20).textColor(Colors.blue).underline
/// ```
///
/// For package maintainers: All methods return new [TextStyle] instances using
/// [copyWith], ensuring original styles remain immutable.
extension FluentTextExtension on TextStyle {
  //----------------------------------------------------------------------------
  // Font weight shortcuts
  //----------------------------------------------------------------------------

  /// Applies ultra-thin font weight (FontWeight.w100)
  TextStyle get thin => weight(FontWeight.w100);

  /// Applies extra-light font weight (FontWeight.w200)
  TextStyle get extraLight => weight(FontWeight.w200);

  /// Applies light font weight (FontWeight.w300)
  TextStyle get light => weight(FontWeight.w300);

  /// Applies regular/normal font weight (FontWeight.w400)
  TextStyle get regular => weight(FontWeight.normal);

  /// Applies medium font weight (FontWeight.w500)
  TextStyle get medium => weight(FontWeight.w500);

  /// Applies semi-bold font weight (FontWeight.w600)
  TextStyle get semiBold => weight(FontWeight.w600);

  /// Applies bold font weight (FontWeight.w700)
  TextStyle get bold => weight(FontWeight.w700);

  /// Applies extra-bold font weight (FontWeight.w800)
  TextStyle get extraBold => weight(FontWeight.w800);

  /// Applies black/heavy font weight (FontWeight.w900)
  TextStyle get black => weight(FontWeight.w900);

  //----------------------------------------------------------------------------
  // Font style shortcuts
  //----------------------------------------------------------------------------

  /// Applies italic font style, overriding any existing font style
  TextStyle get italic => style(FontStyle.italic);

  //----------------------------------------------------------------------------
  // Text decoration shortcuts
  //----------------------------------------------------------------------------

  /// Adds solid underline decoration using current text color
  TextStyle get underline => textDecoration(TextDecoration.underline);

  /// Adds strikethrough decoration using current text color
  TextStyle get lineThrough => textDecoration(TextDecoration.lineThrough);

  /// Adds overline decoration using current text color
  TextStyle get overline => textDecoration(TextDecoration.overline);

  //----------------------------------------------------------------------------
  // Core property methods
  //----------------------------------------------------------------------------

  /// Sets text color to the specified [color]
  ///
  /// ```dart
  /// TextStyle().textColor(Colors.blueAccent)
  /// ```
  TextStyle textColor(Color color) => copyWith(color: color);

  /// Sets background color behind the text
  ///
  /// ```dart
  /// TextStyle().textBackgroundColor(Colors.yellow.withOpacity(0.3))
  /// ```
  TextStyle textBackgroundColor(Color color) =>
      copyWith(backgroundColor: color);

  /// Sets absolute font size in logical pixels
  ///
  /// Prefer using [scale] for relative size adjustments based on current size
  TextStyle size(double size) => copyWith(fontSize: size);

  /// Multiplies current font size by [factor]
  ///
  /// When current fontSize is null:
  /// - Uses 16.0 as base size (matches default Flutter text style)
  ///
  /// ```dart
  /// TextStyle(fontSize: 10).scale(2) // 20px
  /// TextStyle().scale(1.5)          // 24px
  /// ```
  TextStyle scale(double factor) => copyWith(
        fontSize: fontSize == null ? 16 * factor : fontSize! * factor,
      );

  /// Sets explicit [weight], overriding any existing fontWeight
  TextStyle weight(FontWeight weight) => copyWith(fontWeight: weight);

  /// Sets font style, typically used for italics
  TextStyle style(FontStyle style) => copyWith(fontStyle: style);

  //----------------------------------------------------------------------------
  // Advanced typography methods
  //----------------------------------------------------------------------------

  /// Sets letter spacing in logical pixels
  ///
  /// Negative values tighten text, positive values expand it
  TextStyle letterSpace(double spacing) => copyWith(letterSpacing: spacing);

  /// Sets word spacing in logical pixels
  ///
  /// Affects whitespace gaps between words
  TextStyle wordSpace(double spacing) => copyWith(wordSpacing: spacing);

  /// Sets vertical text alignment baseline
  TextStyle baseline(TextBaseline baseline) => copyWith(textBaseline: baseline);

  /// Sets line height multiplier relative to font size
  ///
  /// ```dart
  /// TextStyle().textHeight(1.5) // 150% of font size
  /// ```
  TextStyle textHeight(double height) => copyWith(height: height);

  /// Configures text decoration with optional styling parameters
  ///
  /// ```dart
  /// TextStyle().textDecoration(
  ///   TextDecoration.underline,
  ///   color: Colors.red,
  ///   style: TextDecorationStyle.dashed,
  /// )
  /// ```
  TextStyle textDecoration(
    TextDecoration decoration, {
    Color? color,
    TextDecorationStyle? style,
    double? thickness,
  }) =>
      copyWith(
        decoration: decoration,
        decorationColor: color,
        decorationStyle: style,
        decorationThickness: thickness,
      );

  //----------------------------------------------------------------------------
  // Platform-specific rendering methods
  //----------------------------------------------------------------------------

  /// Sets text locale for region-specific glyph selection
  TextStyle textLocale(Locale locale) => copyWith(locale: locale);

  /// Sets complex foreground painting effects
  ///
  /// Advanced usage - prefer [textColor] for solid colors
  TextStyle textForeground(Paint paint) => copyWith(foreground: paint);

  /// Sets complex background painting effects
  ///
  /// Advanced usage - prefer [textBackgroundColor] for solid colors
  TextStyle textBackground(Paint paint) => copyWith(background: paint);

  /// Adds text shadows with specified [shadows]
  ///
  /// ```dart
  /// TextStyle().textShadows([
  ///   Shadow(color: Colors.black, blurRadius: 2, offset: Offset(1, 1))
  /// ])
  /// ```
  TextStyle textShadows(List<Shadow> shadows) => copyWith(shadows: shadows);

  /// Sets OpenType font features
  ///
  /// ```dart
  /// TextStyle().textFeatures([
  ///   FontFeature.tabularNumbers()
  /// ])
  /// ```
  TextStyle textFeatures(List<FontFeature> features) =>
      copyWith(fontFeatures: features);

  /// Configures text overflow handling
  TextStyle textOverflow(TextOverflow overflow) => copyWith(overflow: overflow);

  /// Sets vertical leading distribution
  ///
  /// Affects how additional vertical space is distributed
  /// above/below the text baseline
  TextStyle textLeadingDist(TextLeadingDistribution distribution) =>
      copyWith(leadingDistribution: distribution);

  //----------------------------------------------------------------------------
  // Font configuration methods
  //----------------------------------------------------------------------------

  /// Sets primary font family
  TextStyle textFontFamily(String family) => copyWith(fontFamily: family);

  /// Sets ordered list of fallback font families
  TextStyle textFontFamilyFallback(List<String> fallback) =>
      copyWith(fontFamilyFallback: fallback);

  /// Sets variable font variations
  TextStyle textFontVariations(List<FontVariation> variations) =>
      copyWith(fontVariations: variations);

  /// Controls inheritance of parent text style properties
  ///
  /// When [inherit] is true (default), unresolved properties cascade from
  /// ancestor text styles
  TextStyle textInherit(bool inherit) => copyWith(inherit: inherit);

  //----------------------------------------------------------------------------
  // Decoration styling methods
  //----------------------------------------------------------------------------

  /// Sets text decoration color
  ///
  /// Defaults to current text color when null
  TextStyle textDecorationColor(Color color) =>
      copyWith(decorationColor: color);

  /// Sets text decoration line style
  TextStyle textDecorationStyle(TextDecorationStyle style) =>
      copyWith(decorationStyle: style);

  /// Sets text decoration line thickness
  ///
  /// Thickness is multiplied by the font size
  TextStyle textDecorationThickness(double thickness) =>
      copyWith(decorationThickness: thickness);
}
