import 'utils.dart';

class DotCaseConverter with StringSplitter implements StringConversionStrategy {
  @override
  String convert(String input) {
    return splitIntoWords(input).join('.').toLowerCase();
  }
}
