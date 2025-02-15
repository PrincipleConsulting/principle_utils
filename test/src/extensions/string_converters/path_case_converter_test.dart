import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/src/extensions/string_converters/path_case_converter.dart';

void main() {
  group('PathCaseConverter', () {
    final PathCaseConverter converter = PathCaseConverter();

    test('Converts words to path case', () {
      expect(converter.convert('hello world'), equals('hello/world'));
      expect(converter.convert('hello-world_test'), equals('hello/world/test'));
    });
  });
}
