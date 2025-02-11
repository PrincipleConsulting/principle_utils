import 'utils.dart';

class PathCaseConverter with StringSplitter implements StringConversionStrategy {
  @override
  String convert(String input) {
    return splitIntoWords(input).join('/').toLowerCase();
  }
}
