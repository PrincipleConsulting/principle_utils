import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/extensions/string_converters/sponge_case_converter.dart';

void main() {
  group('SpongeCaseConverter', () {
    test('converts input to sponge case', () {
      final SpongeCaseConverter converter = SpongeCaseConverter();
      // For "hello" the conversion should be "hElLo"
      expect(converter.convert('hello'), equals('hElLo'));
      // For "hello world" the conversion should be "hElLo wOrLd"
      expect(converter.convert('hello world'), equals('hElLo wOrLd'));
    });
  });
}
