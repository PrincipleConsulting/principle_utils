import 'utils.dart';

class CamelCaseConverter with StringSplitter implements StringConversionStrategy {
  @override
  String convert(String input) {
    final words = splitIntoWords(input);
    if (words.isEmpty) {
      return '';
    }
    return words.first.toLowerCase() + words.skip(1).map(capitalize).join('');
  }
}
