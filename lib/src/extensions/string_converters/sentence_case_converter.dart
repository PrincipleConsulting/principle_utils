import 'utils.dart';

class SentenceCaseConverter
    with StringSplitter
    implements StringConversionStrategy {
  @override
  String convert(String input) {
    final List<String> words = splitIntoWords(input);
    if (words.isEmpty) {
      return '';
    }
    if (words.length == 1) {
      return capitalize(words.first);
    }
    return '${capitalize(words.first)} ${words.skip(1).map((String word) => word.toLowerCase()).join(' ')}';
  }
}
