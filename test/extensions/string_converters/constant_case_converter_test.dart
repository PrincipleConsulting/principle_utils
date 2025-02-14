import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/extensions/string_converters/constant_case_converter.dart';

void main() {
  group('ConstantCaseConverter', () {
    final ConstantCaseConverter converter = ConstantCaseConverter();

    test('Converts words to CONSTANT_CASE', () {
      expect(converter.convert('hello world'), equals('HELLO_WORLD'));
      expect(converter.convert('hello-world_test'), equals('HELLO_WORLD_TEST'));
    });
  });
}
