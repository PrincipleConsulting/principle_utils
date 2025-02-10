import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

const String kCompleteValidHexPattern = r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6}|[0-9a-fA-F]{8})$';

// Extension for String
extension StringToColorExtension on String {
  Color? toColor() {
    return _colorFromHex(this);
  }

  bool isColor() {
    return _isStringColor(this);
  }
}

// Extension from Color
extension ColorToStringExtension on Color {
  String toHexString({
    bool includeHashSign = false,
    bool enableAlpha = true,
    bool toUpperCase = true,
  }) {
    return _toHexString(
      this,
      includeHashSign: includeHashSign,
      enableAlpha: enableAlpha,
      toUpperCase: toUpperCase,
    );
  }
}

// Shorthand for padLeft of RadixString, DRY.
String _padRadix(int value) => value.toRadixString(16).padLeft(2, '0');

/// [RegExp] pattern for validation complete HEX color [String], allows only:
///
/// * exactly 6 or 8 digits in HEX format,
/// * only Latin A-F characters, case insensitive,
/// * and integer numbers 0,1,2,3,4,5,6,7,8,9,
/// * with optional hash (`#`) symbol at the beginning (not calculated in length).
///
/// ```dart
/// final RegExp hexCompleteValidator = RegExp(kCompleteValidHexPattern);
/// if (hexCompleteValidator.hasMatch(hex)) print('$hex is valid HEX color');
/// ```
/// Reference: https://en.wikipedia.org/wiki/Web_colors#Hex_triplet

/// Try to convert text input or any [String] to valid [Color].
/// The [String] must be provided in one of those formats:
///
/// * RGB
/// * #RGB
/// * RRGGBB
/// * #RRGGBB
/// * AARRGGBB
/// * #AARRGGBB
///
/// Where: A stands for Alpha, R for Red, G for Green, and B for blue color.
/// It will only accept 3/6/8 long HEXs with an optional hash (`#`) at the beginning.
/// Allowed characters are Latin A-F case insensitive and numbers 0-9.
/// Optional [enableAlpha] can be provided (it's `true` by default). If it's set
/// to `false` transparency information (alpha channel) will be removed.
/// ```dart
/// /// // Valid 3 digit HEXs:
/// colorFromHex('abc') == Color(0xffaabbcc)
/// colorFromHex('ABc') == Color(0xffaabbcc)
/// colorFromHex('ABC') == Color(0xffaabbcc)
/// colorFromHex('#Abc') == Color(0xffaabbcc)
/// colorFromHex('#abc') == Color(0xffaabbcc)
/// colorFromHex('#ABC') == Color(0xffaabbcc)
/// // Valid 6 digit HEXs:
/// colorFromHex('aabbcc') == Color(0xffaabbcc)
/// colorFromHex('AABbcc') == Color(0xffaabbcc)
/// colorFromHex('AABBCC') == Color(0xffaabbcc)
/// colorFromHex('#AABbcc') == Color(0xffaabbcc)
/// colorFromHex('#aabbcc') == Color(0xffaabbcc)
/// colorFromHex('#AABBCC') == Color(0xffaabbcc)
/// // Valid 8 digit HEXs:
/// colorFromHex('ffaabbcc') == Color(0xffaabbcc)
/// colorFromHex('ffAABbcc') == Color(0xffaabbcc)
/// colorFromHex('ffAABBCC') == Color(0xffaabbcc)
/// colorFromHex('ffaabbcc', enableAlpha: true) == Color(0xffaabbcc)
/// colorFromHex('FFAAbbcc', enableAlpha: true) == Color(0xffaabbcc)
/// colorFromHex('ffAABBCC', enableAlpha: true) == Color(0xffaabbcc)
/// colorFromHex('FFaabbcc', enableAlpha: true) == Color(0xffaabbcc)
/// colorFromHex('#ffaabbcc') == Color(0xffaabbcc)
/// colorFromHex('#ffAABbcc') == Color(0xffaabbcc)
/// colorFromHex('#FFAABBCC') == Color(0xffaabbcc)
/// colorFromHex('#ffaabbcc', enableAlpha: true) == Color(0xffaabbcc)
/// colorFromHex('#FFAAbbcc', enableAlpha: true) == Color(0xffaabbcc)
/// colorFromHex('#ffAABBCC', enableAlpha: true) == Color(0xffaabbcc)
/// colorFromHex('#FFaabbcc', enableAlpha: true) == Color(0xffaabbcc)
/// // Invalid HEXs:
/// colorFromHex('bc') == null // length 2
/// colorFromHex('aabbc') == null // length 5
/// colorFromHex('#ffaabbccd') == null // length 9 (+#)
/// colorFromHex('aabbcx') == null // x character
/// colorFromHex('#aabbвв') == null // в non-latin character
/// colorFromHex('') == null // empty
/// ```
/// Reference: https://en.wikipedia.org/wiki/Web_colors#Hex_triplet
Color? _colorFromHex(String inputString) {
  // Registers validator for exactly 6 or 8 digits long HEX (with optional #).
  final RegExp hexValidator = RegExp(kCompleteValidHexPattern);
  // Validating input, if it does not match — it's not proper HEX.
  if (!hexValidator.hasMatch(inputString)) {
    return null;
  }
  // Remove # if included in input.
  String hexString = inputString.replaceFirst('#', '').toUpperCase();

  // Handle use Cases for Strings lengths 6, and 3.
  if (hexString.length == 6) {
    hexString = 'FF$hexString';
  } else if (hexString.length == 3) {
    hexString = hexString.split('').expand((i) => [i * 2]).join();
  }

  // turns String into int. to be used in Color constructor.
  final intColorValue = int.tryParse(hexString, radix: 16)!;

  return Color(intColorValue);
}

bool _isStringColor(String inputString) {
  // Registers validator for exactly 6 or 8 digits long HEX (with optional #).
  final RegExp hexValidator = RegExp(kCompleteValidHexPattern);
  // Validating input, if it does not match — it's not proper HEX.
  return hexValidator.hasMatch(inputString);
}

String _toHexString(
  Color color, {
  bool includeHashSign = false,
  bool enableAlpha = true,
  bool toUpperCase = true,
}) {
  final String hex = (includeHashSign ? '#' : '') +
      (enableAlpha ? _padRadix(color.a.toInt()) : '') +
      _padRadix(color.r.toInt()) +
      _padRadix(color.g.toInt()) +
      _padRadix(color.b.toInt());

  return toUpperCase ? hex.toUpperCase() : hex;
}
