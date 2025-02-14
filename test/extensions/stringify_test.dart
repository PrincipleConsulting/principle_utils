import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/extensions/barrel.dart';

void main() {
  group('Stringify Extension', () {
    const input = 'hello world';

    test('toCamelCase converts to camelCase', () {
      expect(input.toCamelCase(), equals('helloWorld'));
    });

    test('toPascalCase converts to PascalCase', () {
      expect(input.toPascalCase(), equals('HelloWorld'));
    });

    test('toSnakeCase converts to snake_case', () {
      expect(input.toSnakeCase(), equals('hello_world'));
    });

    test('toConstantCase converts to CONSTANT_CASE', () {
      expect(input.toConstantCase(), equals('HELLO_WORLD'));
    });

    test('toDotCase converts to dot.case', () {
      expect(input.toDotCase(), equals('hello.world'));
    });

    test('toHeaderCase converts to Header-Case', () {
      expect(input.toHeaderCase(), equals('Hello-World'));
    });

    test('toNoCase converts to no case (changed to lowercase)', () {
      expect(input.toNoCase(), equals('helloworld'));
    });

    test('toParamCase converts to param-case', () {
      expect(input.toParamCase(), equals('hello-world'));
    });

    test('toPathCase converts to path/case', () {
      expect(input.toPathCase(), equals('hello/world'));
    });

    test('toSentenceCase converts to Sentence case', () {
      expect(input.toSentenceCase(), equals('Hello world'));
    });

    test('toLowerFirstCase converts "Hello world" to lower first case', () {
      expect('Hello world'.toLowerFirstCase(), equals('hello world'));
    });

    test('toUpperFirstCase converts "hello world" to upper first case', () {
      expect('hello world'.toUpperFirstCase(), equals('Hello world'));
    });

    test('toSpongeCase converts to alternating case', () {
      expect(input.toSpongeCase(), equals('hElLo wOrLd'));
    });

    test('toTitleCase converts to Title Case', () {
      expect(input.toTitleCase(), equals('Hello World'));
    });
  });
}
