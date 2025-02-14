import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/extensions/string_converters/params_case_converter.dart';

void main() {
  group('ParamCaseConverter', () {
    final ParamCaseConverter converter = ParamCaseConverter();

    test('Converts words to param-case', () {
      expect(converter.convert('hello world'), equals('hello-world'));
      expect(converter.convert('Hello World'), equals('hello-world'));
    });
  });
}
