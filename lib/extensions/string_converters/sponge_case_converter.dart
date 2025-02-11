import 'utils.dart';

class SpongeCaseConverter implements StringConversionStrategy {
  @override
  String convert(String input) {
    return input.split('').asMap().entries.map((MapEntry<int, String> entry) {
      final int index = entry.key;
      final String char = entry.value;
      return index.isEven ? char.toLowerCase() : char.toUpperCase();
    }).join();
  }
}
