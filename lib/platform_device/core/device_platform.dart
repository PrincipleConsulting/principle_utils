import 'dart:io';

import 'platform_type.dart';

abstract final class DevicePlatformType {
  static PlatformType get currentPlatformType {
    if (Platform.isWindows) return PlatformType.Windows;
    if (Platform.isFuchsia) return PlatformType.Fuchsia;
    if (Platform.isMacOS) return PlatformType.MacOS;
    if (Platform.isLinux) return PlatformType.Linux;
    if (Platform.isIOS) return PlatformType.IOS;
    return PlatformType.Android;
  }
}
