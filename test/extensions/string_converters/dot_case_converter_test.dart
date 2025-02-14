import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/extensions/string_converters/dot_case_converter.dart';

void main() {
  group('DotCaseConverter', () {
    final DotCaseConverter converter = DotCaseConverter();

    test('Converts words to dot.case', () {
      expect(converter.convert('hello world'), equals('hello.world'));
      expect(converter.convert('hello-world_test'), equals('hello.world.test'));
    });
  });
}
