import 'package:flutter/painting.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/principle_utils.dart';

void main() {
  group('StringToColorExtension', () {
    test('Valid 3-digit HEX should convert to Color', () {
      expect('abc'.toColor(), equals(const Color(0xFFAABBCC)));
      expect('#ABC'.toColor(), equals(const Color(0xFFAABBCC)));
    });

    test('Valid 6-digit HEX should convert to Color', () {
      expect('aabbcc'.toColor(), equals(const Color(0xFFAABBCC)));
      expect('#AABBCC'.toColor(), equals(const Color(0xFFAABBCC)));
    });

    test('Valid 8-digit HEX should convert to Color', () {
      expect('FFAABBCC'.toColor(), equals(const Color(0xFFAABBCC)));
      expect('#FFAABBCC'.toColor(), equals(const Color(0xFFAABBCC)));
    });

    test('Invalid HEX should return null', () {
      expect(() => 'aabbcx'.toColor(), throwsFormatException);
      expect(() => '#ffaabbccd'.toColor(), throwsFormatException);
      expect(() => ''.toColor(), throwsFormatException);
    });

    test('isColor() should return true for valid HEX', () {
      expect('abc'.isColor(), isTrue);
      expect('#ABC'.isColor(), isTrue);
      expect('aabbcc'.isColor(), isTrue);
      expect('#AABBCC'.isColor(), isTrue);
      expect('FFAABBCC'.isColor(), isTrue);
      expect('#FFAABBCC'.isColor(), isTrue);
    });

    test('isColor() should return false for invalid HEX', () {
      expect('aabbcx'.isColor(), isFalse);
      expect('#ffaabbccd'.isColor(), isFalse);
      expect(''.isColor(), isFalse);
    });
  });

  group('ColorToStringExtension', () {
    test('toHexString() should return correct HEX string', () {
      const Color color = Color(0xFFAABBCC);
      expect(color.toHexString(), equals('FFAABBCC'));
      expect(color.toHexString(includeHashSign: true), equals('#FFAABBCC'));
      expect(color.toHexString(enableAlpha: false), equals('AABBCC'));
      expect(color.toHexString(toUpperCase: false), equals('ffaabbcc'));
    });
  });
}
