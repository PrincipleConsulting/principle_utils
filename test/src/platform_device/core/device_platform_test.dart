import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/platform_device.dart';

void main() {
  group('DevicePlatformType (dart:io implementation)', () {
    test('returns the proper platform type based on dart:io', () {
      // Determine the expected platform type using dart:io's Platform properties.
      PlatformType expected;
      if (Platform.isWindows) {
        expected = PlatformType.Windows;
      } else if (Platform.isFuchsia) {
        expected = PlatformType.Fuchsia;
      } else if (Platform.isMacOS) {
        expected = PlatformType.MacOS;
      } else if (Platform.isLinux) {
        expected = PlatformType.Linux;
      } else if (Platform.isIOS) {
        expected = PlatformType.IOS;
      } else {
        expected = PlatformType.Android;
      }
      // When running on non-web platforms, the currentPlatformType should match the expected value.
      expect(DevicePlatformType.currentPlatformType, equals(expected));
    });
  });
}
