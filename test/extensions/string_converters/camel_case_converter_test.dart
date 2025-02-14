import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/extensions/string_converters/camel_case_converter.dart';

void main() {
  group('CamelCaseConverter', () {
    final CamelCaseConverter converter = CamelCaseConverter();

    test('Converts words to camelCase', () {
      expect(converter.convert('hello world'), equals('helloWorld'));
      expect(converter.convert('Hello world'), equals('helloWorld'));
      expect(converter.convert('hello-world_test'), equals('helloWorldTest'));
    });
  });
}
