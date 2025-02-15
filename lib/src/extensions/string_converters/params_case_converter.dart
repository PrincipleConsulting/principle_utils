import 'utils.dart';

class ParamCaseConverter
    with StringSplitter
    implements StringConversionStrategy {
  @override
  String convert(String input) {
    return splitIntoWords(input).join('-').toLowerCase();
  }
}
