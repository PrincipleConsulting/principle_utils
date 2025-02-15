import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/src/extensions/string_converters/barrel.dart';
import 'package:principle_utils/src/extensions/string_converters/snake_case_converter.dart';
import 'package:principle_utils/src/extensions/string_converters/sponge_case_converter.dart';
import 'package:principle_utils/src/extensions/string_converters/title_case_converter.dart';
import 'package:principle_utils/src/extensions/string_converters/utils.dart';

void main() {
  group('ConversionStrategyFactory', () {
    test('returns SnakeCaseConverter for snakeCase', () {
      final StringConversionStrategy strategy = ConversionStrategyFactory.getStrategy(ConversionType.snakeCase);
      expect(strategy, isA<SnakeCaseConverter>());
      expect(strategy.convert('Hello World'), equals('hello_world'));
    });

    test('returns SpongeCaseConverter for spongeCase', () {
      final StringConversionStrategy strategy = ConversionStrategyFactory.getStrategy(ConversionType.spongeCase);
      expect(strategy, isA<SpongeCaseConverter>());
      expect(strategy.convert('hello world'), equals('hElLo wOrLd'));
    });

    test('returns TitleCaseStrategy for titleCase', () {
      final StringConversionStrategy strategy = ConversionStrategyFactory.getStrategy(ConversionType.titleCase);
      expect(strategy, isA<TitleCaseStrategy>());
      expect(strategy.convert('hello world'), equals('Hello World'));
    });
  });
}
