import 'dart:math' show pi;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/principle_utils.dart';

void main() {
  // Use a fixed seed before each test for reproducibility.
  setUp(() {
    rndSeed = 42;
  });

  group('RandomExtensions', () {
    test('call() with no arguments returns double in [0, 1)', () {
      final double result = rnd();
      expect(result, inInclusiveRange(0.0, 1.0));
    });

    test('call() with one argument returns double in [0, arg)', () {
      final double result = rnd(10.0);
      expect(result, inInclusiveRange(0.0, 10.0));
    });

    test('call() with two arguments returns double in [min, max)', () {
      final double result = rnd(5.0, 15.0);
      expect(result, inInclusiveRange(5.0, 15.0));
    });

    test('getInt returns int in [min, max)', () {
      // getInt(1, 10) should return values from 1 (inclusive) to 10 (exclusive)
      final int result = rnd.getInt(1, 10);
      expect(result, inInclusiveRange(1, 9));
    });

    test('getDouble returns double in [min, max)', () {
      final double result = rnd.getDouble(1.0, 10.0);
      expect(result, inInclusiveRange(1.0, 10.0));
    });

    test('getBool returns true with chance 1.0 and false with chance 0.0', () {
      expect(rnd.getBool(1.0), isTrue);
      expect(rnd.getBool(0.0), isFalse);
    });

    test('getBit returns 1 with chance 1.0 and 0 with chance 0.0', () {
      expect(rnd.getBit(1.0), equals(1));
      expect(rnd.getBit(0.0), equals(0));
    });

    test('getSign returns 1 with chance 1.0 and -1 with chance 0.0', () {
      expect(rnd.getSign(1.0), equals(1));
      expect(rnd.getSign(0.0), equals(-1));
    });

    test('getDeg returns angle in [0, 360)', () {
      final double deg = rnd.getDeg();
      expect(deg, inInclusiveRange(0.0, 360.0));
    });

    test('getRad returns angle in [0, 2π)', () {
      final double rad = rnd.getRad();
      expect(rad, inInclusiveRange(0.0, 2 * pi));
    });

    test('getColor returns a valid Color', () {
      final Color color = rnd.getColor();
      expect(color, isA<Color>());
    });

    test('returns a color with fixed opacity when minOpacity equals maxOpacity',
        () {
      // With minOpacity == maxOpacity == 1.0 (default), opacity is fixed.
      final Color color = rnd.getColor();
      final HSLColor hsl = HSLColor.fromColor(color);
      expect(hsl.alpha, closeTo(1.0, 0.0001));
    });

    test('returns a color with provided opacity', () {
      final Color color = rnd.getColor(opacity: 0.7);
      final HSLColor hsl = HSLColor.fromColor(color);
      expect(hsl.alpha, closeTo(0.7, 0.002));
    });

    test('returns a hue within [0,360) when no hue is provided', () {
      final Color color = rnd.getColor();
      final HSLColor hsl = HSLColor.fromColor(color);
      expect(hsl.hue, inInclusiveRange(0.0, 360.0));
    });

    test('returns a constant hue when hue is provided with zero hueRange', () {
      // When hue is provided and hueRange is 0 (default), then
      // minHue and maxHue become equal to the provided hue.
      final Color color = rnd.getColor(hue: 60);
      final HSLColor hsl = HSLColor.fromColor(color);
      expect(hsl.hue, closeTo(60.0, 0.25));
    });

    test('handles hueRange and wrap-around correctly', () {
      // Example: hue = 10, hueRange = 20.
      // Calculation steps:
      //   minHue = (10 - 20) % 360 = (-10 % 360) = 350,
      //   maxHue = (10 + 20) % 360 = 30.
      // Since 350 > 30, we subtract 360 from minHue to get -10.
      // Then getDouble(-10, 30) yields a value in [-10, 30).
      // Finally, the result is taken modulo 360 so that negative values wrap around.
      final Color color = rnd.getColor(hue: 10, hueRange: 20);
      final HSLColor hsl = HSLColor.fromColor(color);
      final double computedHue = hsl.hue;
      // Valid hue values are those that, after wrapping, fall in either [0, 30)
      // (if getDouble returns a positive value) or in [350, 360) (if negative).
      final bool isInValidRange = (computedHue >= 0 && computedHue < 30) ||
          (computedHue >= 350 && computedHue < 360);
      expect(isInValidRange, isTrue,
          reason: 'Computed hue ($computedHue) is not in the expected range.');
    });

    test('returns a fixed saturation when minSaturation equals maxSaturation',
        () {
      // If saturation is provided via fixed range, the output should be constant.
      final Color color =
          rnd.getColor(saturation: 0.5, minSaturation: 0.5, maxSaturation: 0.5);
      final HSLColor hsl = HSLColor.fromColor(color);
      expect(hsl.saturation, closeTo(0.5, 0.0001));
    });

    test('returns a fixed lightness when minLightness equals maxLightness', () {
      final Color color =
          rnd.getColor(lightness: 0.3, minLightness: 0.3, maxLightness: 0.3);
      final HSLColor hsl = HSLColor.fromColor(color);
      expect(hsl.lightness, closeTo(0.3, 0.0001));
    });

    test(
        'getItem returns an element from the list and removes it when requested',
        () {
      final List<int> list = <int>[1, 2, 3, 4];
      final int originalLength = list.length;
      final int item = rnd.getItem(list, remove: true);
      expect(originalLength - list.length, equals(1));
      expect(item, isIn(<int>[1, 2, 3, 4]));
    });

    test('shuffle returns a shuffled copy when copy is true', () {
      final List<int> list = <int>[1, 2, 3, 4, 5];
      final List<int> shuffled = rnd.shuffle(list, copy: true);
      // The original list should remain unchanged.
      expect(list, equals(<int>[1, 2, 3, 4, 5]));
      // The shuffled list should contain the same elements.
      expect(shuffled.toSet(), equals(list.toSet()));
    });

    test('shuffle shuffles the original list in place when copy is false', () {
      final List<int> list = <int>[1, 2, 3, 4, 5];
      final List<int> original = List<int>.of(list);
      rnd.shuffle(list);
      // The list should still contain the same elements.
      expect(list.toSet(), equals(original.toSet()));
      // It is possible (but unlikely) that the order remains unchanged.
      if (list.length > 1) {
        expect(list, isNot(equals(original)),
            reason: 'List should be shuffled in place');
      }
    });
  });
}
