import 'utils.dart';

class LowerFirstCaseConverter implements StringConversionStrategy {
  @override
  String convert(String input) {
    if (input.isEmpty) return input;
    return input[0].toLowerCase() + input.substring(1);
  }
}
