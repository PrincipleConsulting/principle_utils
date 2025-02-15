import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/src/extensions/string_converters/no_case_converter.dart';

void main() {
  group('NoCaseConverter', () {
    final NoCaseConverter converter = NoCaseConverter();

    test('Converts words to no case (lowercase, concatenated)', () {
      expect(converter.convert('Hello world'), equals('helloworld'));
      expect(converter.convert('HELLO WORLD'), equals('helloworld'));
    });
  });
}
