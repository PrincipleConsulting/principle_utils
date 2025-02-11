import 'utils.dart';

class ConstantCaseConverter with StringSplitter implements StringConversionStrategy {
  @override
  String convert(String input) {
    return splitIntoWords(input).join('_').toUpperCase();
  }
}
