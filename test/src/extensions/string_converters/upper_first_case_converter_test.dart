import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/src/extensions/string_converters/upper_case_converter.dart';

void main() {
  group('UpperCaseConverter', () {
    test('converts input to uppercase', () {
      final UpperCaseConverter converter = UpperCaseConverter();
      expect(converter.convert('hello world'), equals('HELLO WORLD'));
    });
  });
}
