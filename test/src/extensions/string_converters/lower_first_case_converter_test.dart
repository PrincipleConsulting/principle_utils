import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/src/extensions/string_converters/lower_first_case_converter.dart';

void main() {
  group('LowerFirstCaseConverter', () {
    final LowerFirstCaseConverter converter = LowerFirstCaseConverter();

    test('Converts first letter to lowercase only', () {
      expect(converter.convert(''), equals(''));
      expect(converter.convert('H'), equals('h'));
      expect(converter.convert('Hello-world_test'), equals('hello-world_test'));
    });
  });
}
