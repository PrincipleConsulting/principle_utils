import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/extensions/string_converters/title_case_converter.dart';

void main() {
  group('TitleCaseStrategy', () {
    test('converts input to title case', () {
      final TitleCaseStrategy converter = TitleCaseStrategy();
      // "hello world" -> "Hello World"
      expect(converter.convert('hello world'), equals('Hello World'));
      // Test extra whitespace
      expect(converter.convert('  hello   world  '), equals('Hello World'));
    });
  });
}
