abstract class StringConversionStrategy {
  String convert(String input);
}

// Shared logic for splitting and capitalization
mixin StringSplitter {
  List<String> splitIntoWords(String input) {
    return input.trim().split(RegExp(r'[\s_-]+'));
  }

  String capitalize(String word) {
    if (word.isEmpty) {
      return word;
    }
    return word[0].toUpperCase() + word.substring(1).toLowerCase();
  }
}
