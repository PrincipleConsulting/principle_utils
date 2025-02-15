import 'utils.dart';

class UpperFirstCaseConverter implements StringConversionStrategy {
  @override
  String convert(String input) {
    if (input.isEmpty) {
      return input;
    }
    return input[0].toUpperCase() + input.substring(1);
  }
}
