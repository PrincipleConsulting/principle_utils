import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/extensions/string_converters/pascal_case_converter.dart';

void main() {
  group('PascalCaseConverter', () {
    final PascalCaseConverter converter = PascalCaseConverter();

    test('Converts words to PascalCase', () {
      expect(converter.convert('hello world'), equals('HelloWorld'));
      expect(converter.convert('hello-world_test'), equals('HelloWorldTest'));
    });
  });
}
