import 'utils.dart';

class UpperCaseConverter implements StringConversionStrategy {
  @override
  String convert(String input) {
    return input.toUpperCase();
  }
}
