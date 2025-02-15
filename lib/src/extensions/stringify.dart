import 'string_converters/stringify_factory.dart'; // Import the factory and strategies

extension Stringify on String {
  String toCamelCase() =>
      ConversionStrategyFactory.getStrategy(ConversionType.camelCase)
          .convert(this);
  String toPascalCase() =>
      ConversionStrategyFactory.getStrategy(ConversionType.pascalCase)
          .convert(this);
  String toSnakeCase() =>
      ConversionStrategyFactory.getStrategy(ConversionType.snakeCase)
          .convert(this);
  String toConstantCase() =>
      ConversionStrategyFactory.getStrategy(ConversionType.constantCase)
          .convert(this);
  String toDotCase() =>
      ConversionStrategyFactory.getStrategy(ConversionType.dotCase)
          .convert(this);
  String toHeaderCase() =>
      ConversionStrategyFactory.getStrategy(ConversionType.headerCase)
          .convert(this);
  String toNoCase() =>
      ConversionStrategyFactory.getStrategy(ConversionType.noCase)
          .convert(this);
  String toParamCase() =>
      ConversionStrategyFactory.getStrategy(ConversionType.paramCase)
          .convert(this);
  String toPathCase() =>
      ConversionStrategyFactory.getStrategy(ConversionType.pathCase)
          .convert(this);
  String toSentenceCase() =>
      ConversionStrategyFactory.getStrategy(ConversionType.sentenceCase)
          .convert(this);
  String toLowerFirstCase() =>
      ConversionStrategyFactory.getStrategy(ConversionType.lowerFirstCase)
          .convert(this);
  String toUpperFirstCase() =>
      ConversionStrategyFactory.getStrategy(ConversionType.upperFirstCase)
          .convert(this);
  String toSpongeCase() =>
      ConversionStrategyFactory.getStrategy(ConversionType.spongeCase)
          .convert(this);
  String toTitleCase() =>
      ConversionStrategyFactory.getStrategy(ConversionType.titleCase)
          .convert(this);
}
