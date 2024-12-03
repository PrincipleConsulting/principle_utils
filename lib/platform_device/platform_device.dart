library platform_device;

import 'core/barrel.dart';

export 'core/barrel.dart';

abstract class PlatformDevice {
  static PlatformType get value => DevicePlatformType.currentPlatformType;

  static bool get isWeb => DevicePlatformType.currentPlatformType == PlatformType.Web;
  static bool get isMacOS => DevicePlatformType.currentPlatformType == PlatformType.MacOS;
  static bool get isWindows => DevicePlatformType.currentPlatformType == PlatformType.Windows;
  static bool get isLinux => DevicePlatformType.currentPlatformType == PlatformType.Linux;
  static bool get isAndroid => DevicePlatformType.currentPlatformType == PlatformType.Android;
  static bool get isIOS => DevicePlatformType.currentPlatformType == PlatformType.IOS;
  static bool get isFuchsia => DevicePlatformType.currentPlatformType == PlatformType.Fuchsia;

  static bool get isApple => PlatformDevice.isIOS || PlatformDevice.isMacOS;
  static bool get isMobile => PlatformDevice.isIOS || PlatformDevice.isAndroid;
  static bool get isDesktop => isLinux || isMacOS || isWindows;
  static bool get isDesktopOrWeb => PlatformDevice.isDesktop || PlatformDevice.isWeb;

  static String get operatingSystem {
    switch (value) {
      case PlatformType.Web:
        return "web";
      case PlatformType.MacOS:
        return "macos";
      case PlatformType.Windows:
        return "windows";
      case PlatformType.Linux:
        return "linux";
      case PlatformType.Android:
        return "android";
      case PlatformType.IOS:
        return "ios";
      case PlatformType.Fuchsia:
        return "fuchsia";
    }
  }
}
