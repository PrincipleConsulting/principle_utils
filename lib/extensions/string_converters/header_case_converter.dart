import 'utils.dart';

class HeaderCaseConverter with StringSplitter implements StringConversionStrategy {
  @override
  String convert(String input) {
    return splitIntoWords(input).map(capitalize).join('-');
  }
}
