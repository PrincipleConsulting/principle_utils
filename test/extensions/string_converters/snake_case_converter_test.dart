import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/extensions/string_converters/snake_case_converter.dart';

void main() {
  group('SnakeCaseConverter', () {
    test('converts input to snake case', () {
      final SnakeCaseConverter converter = SnakeCaseConverter();
      expect(converter.convert("Hello World"), equals("hello_world"));
      expect(converter.convert("hello-world_test"), equals("hello_world_test"));
    });
  });
}
