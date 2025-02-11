import 'utils.dart';

class NoCaseConverter with StringSplitter implements StringConversionStrategy {
  @override
  String convert(String input) {
    return splitIntoWords(input).join('').toLowerCase();
  }
}
