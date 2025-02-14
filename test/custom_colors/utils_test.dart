import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/custom_colors/utils.dart';

void main() {
  group('useWhiteForeground', () {
    test('returns true for dark colors (black)', () {
      expect(useWhiteForeground(Colors.black), isTrue);
    });

    test('returns false for bright colors (white)', () {
      expect(useWhiteForeground(Colors.white), isFalse);
    });

    test('returns true for dark blue', () {
      expect(useWhiteForeground(const Color(0xFF00008B)), isTrue);
    });

    test('returns false for light yellow', () {
      expect(useWhiteForeground(const Color(0xFFFFFF99)), isFalse);
    });

    test('bias adjustment makes threshold flexible', () {
      expect(useWhiteForeground(const Color(0xFF777777), bias: 20.0), isTrue);
      expect(useWhiteForeground(const Color(0xFF777777), bias: -20.0), isFalse);
    });
  });
}
