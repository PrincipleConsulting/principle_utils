import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/extensions/string_converters/utils.dart';

// Dummy class for testing that implements the abstract class and mixes in StringSplitter.
class DummyConversionStrategy extends StringConversionStrategy with StringSplitter {
  @override
  String convert(String input) {
    // For testing purposes, simply join the split words with a single space.
    final List<String> words = splitIntoWords(input);
    return words.join(' ');
  }
}

void main() {
  group('StringSplitter', () {
    final DummyConversionStrategy dummy = DummyConversionStrategy();

    test('splitIntoWords splits input on whitespace, underscores, and dashes', () {
      const String input = 'hello-world_test case';
      final List<String> expected = <String>['hello', 'world', 'test', 'case'];
      expect(dummy.splitIntoWords(input), equals(expected));
    });

    test('capitalize returns an empty string when input is empty', () {
      expect(dummy.capitalize(''), equals(''));
    });

    test('capitalize correctly capitalizes a word', () {
      expect(dummy.capitalize('hello'), equals('Hello'));
      expect(dummy.capitalize('hELLo'), equals('Hello'));
    });
  });

  group('DummyConversionStrategy.convert', () {
    final DummyConversionStrategy dummy = DummyConversionStrategy();

    test('convert splits and rejoins the string correctly', () {
      // Using the same behavior as splitIntoWords then joining by a space.
      const String input = 'foo-bar_baz  qux';
      const String expected = 'foo bar baz qux';
      expect(dummy.convert(input), equals(expected));
    });
  });
}
