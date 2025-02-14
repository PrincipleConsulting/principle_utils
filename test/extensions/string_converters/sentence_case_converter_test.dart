import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/extensions/string_converters/sentence_case_converter.dart';

void main() {
  group('SentenceCaseConverter', () {
    final SentenceCaseConverter converter = SentenceCaseConverter();

    test('Empty string returns empty string', () {
      expect(converter.convert(''), equals(''));
    });

    test('Single word returns capitalized word', () {
      expect(converter.convert('hello'), equals('Hello'));
      expect(converter.convert('HELLO'), equals('Hello'));
    });

    test('Multiple words returns sentence case', () {
      expect(converter.convert('hello world'), equals('Hello world'));
      expect(converter.convert('hELLO WoRLD'), equals('Hello world'));
      expect(converter.convert('hello   world  test'), equals('Hello world test'));
    });
  });
}
