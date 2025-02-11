import 'camel_case_converter.dart';
import 'constant_case_converter.dart';
import 'dot_case_converter.dart';
import 'header_case_converter.dart';
import 'lower_first_case_converter.dart';
import 'no_case_converter.dart';
import 'params_case_converter.dart';
import 'pascal_case_converter.dart';
import 'path_case_converter.dart';
import 'sentence_case_converter.dart';
import 'snake_case_converter.dart';
import 'sponge_case_converter.dart';
import 'title_case_converter.dart';
import 'upper_first_case_converter.dart';
import 'utils.dart';

enum ConversionType {
  camelCase,
  pascalCase,
  snakeCase,
  constantCase,
  dotCase,
  headerCase,
  noCase,
  paramCase,
  pathCase,
  sentenceCase,
  lowerFirstCase,
  upperFirstCase,
  spongeCase,
  titleCase,
}

class ConversionStrategyFactory {
  static StringConversionStrategy getStrategy(ConversionType type) {
    switch (type) {
      case ConversionType.camelCase:
        return CamelCaseConverter();
      case ConversionType.pascalCase:
        return PascalCaseConverter();
      case ConversionType.snakeCase:
        return SnakeCaseConverter();
      case ConversionType.constantCase:
        return ConstantCaseConverter();
      case ConversionType.dotCase:
        return DotCaseConverter();
      case ConversionType.headerCase:
        return HeaderCaseConverter();
      case ConversionType.noCase:
        return NoCaseConverter();
      case ConversionType.paramCase:
        return ParamCaseConverter();
      case ConversionType.pathCase:
        return PathCaseConverter();
      case ConversionType.sentenceCase:
        return SentenceCaseConverter();
      case ConversionType.lowerFirstCase:
        return LowerFirstCaseConverter();
      case ConversionType.upperFirstCase:
        return UpperFirstCaseConverter();
      case ConversionType.spongeCase:
        return SpongeCaseConverter();
      case ConversionType.titleCase:
        return TitleCaseStrategy();
    }
  }
}
