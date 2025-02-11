import 'utils.dart';

class SnakeCaseConverter extends StringConversionStrategy {
  @override
  String convert(String input) {
    return input.split(RegExp(r'[\s_-]+')).join('_').toLowerCase();
  }
}
