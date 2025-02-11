import 'utils.dart';

class TitleCaseStrategy with StringSplitter implements StringConversionStrategy {
  @override
  String convert(String input) {
    final List<String> words = splitIntoWords(input);
    return words.map(capitalize).join(' ');
  }
}
