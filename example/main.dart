// ignore_for_file: avoid_print
import 'dart:ui';

import 'package:principle_utils/principle_utils.dart';

void main() {
  const String original = 'hello_world';

  final String camel = original.toCamelCase(); // -> "helloWorld"
  final String title = 'user id'.toTitleCase(); // -> "User Id"
  final String sponge = 'FlutterIsCool'.toSpongeCase(); // -> "fLuTtErIsCoOl"

  print('Camel Case: $camel');
  print('Title Case: $title');
  print('Sponge Case: $sponge');

  // Convert HEX string to Color
  final Color customColor = 'ff3399'.toColor();
  print('Custom Color: $customColor');

  // Use duration extension to execute a function after 500 milliseconds
  Future<void>.delayed(500.ms, () {
    print('Executed after 500 milliseconds');
  });
}
