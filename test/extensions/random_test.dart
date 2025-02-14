import 'dart:math' show pi;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/extensions/random.dart';

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

    test('getItem returns an element from the list and removes it when requested', () {
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
        expect(list, isNot(equals(original)), reason: 'List should be shuffled in place');
      }
    });
  });
}
