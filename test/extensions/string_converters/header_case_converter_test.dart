import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/extensions/string_converters/header_case_converter.dart';

void main() {
  group('HeaderCaseConverter', () {
    final HeaderCaseConverter converter = HeaderCaseConverter();

    test('Converts words to Header-Case', () {
      expect(converter.convert('hello world'), equals('Hello-World'));
      expect(converter.convert('hello-world_test'), equals('Hello-World-Test'));
    });
  });
}
