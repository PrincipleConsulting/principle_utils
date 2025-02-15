library platform_device;

import 'core/barrel.dart';

export 'core/barrel.dart';

/// A utility library to identify and interact with the platform type of the current device.
///
/// This library provides an abstraction for determining the device's operating system,
/// categorizing platforms, and simplifying platform-specific logic in your Flutter applications.
///
/// ### Example Usage
/// ```dart
/// if (PlatformDevice.isWeb) {
///   print("Running on a web browser");
/// }
///
/// if (PlatformDevice.isApple) {
///   print("Running on an Apple device (macOS or iOS)");
/// }
///
/// print("Operating system: ${PlatformDevice.operatingSystem}");
/// ```
abstract final class PlatformDevice {
  /// Retrieves the current platform type as a [PlatformType] enum.
  static PlatformType get value => DevicePlatformType.currentPlatformType;

  // Platform checks

  /// Returns `true` if the platform is a web browser.
  static bool get isWeb =>
      DevicePlatformType.currentPlatformType == PlatformType.Web;

  /// Returns `true` if the platform is macOS.
  static bool get isMacOS =>
      DevicePlatformType.currentPlatformType == PlatformType.MacOS;

  /// Returns `true` if the platform is Windows.
  static bool get isWindows =>
      DevicePlatformType.currentPlatformType == PlatformType.Windows;

  /// Returns `true` if the platform is Linux.
  static bool get isLinux =>
      DevicePlatformType.currentPlatformType == PlatformType.Linux;

  /// Returns `true` if the platform is Android.
  static bool get isAndroid =>
      DevicePlatformType.currentPlatformType == PlatformType.Android;

  /// Returns `true` if the platform is iOS.
  static bool get isIOS =>
      DevicePlatformType.currentPlatformType == PlatformType.IOS;

  /// Returns `true` if the platform is Fuchsia.
  static bool get isFuchsia =>
      DevicePlatformType.currentPlatformType == PlatformType.Fuchsia;

  // Composite checks

  /// Returns `true` if the platform is either iOS or macOS.
  static bool get isApple => PlatformDevice.isIOS || PlatformDevice.isMacOS;

  /// Returns `true` if the platform is either iOS or Android.
  static bool get isMobile => PlatformDevice.isIOS || PlatformDevice.isAndroid;

  /// Returns `true` if the platform is a desktop system (Linux, macOS, or Windows).
  static bool get isDesktop => isLinux || isMacOS || isWindows;

  /// Returns `true` if the platform is either a desktop system or a web browser.
  static bool get isDesktopOrWeb =>
      PlatformDevice.isDesktop || PlatformDevice.isWeb;

  /// Gets the operating system name as a lowercase string.
  ///
  /// Returns:
  /// - `"web"` for web browsers.
  /// - `"macos"` for macOS.
  /// - `"windows"` for Windows.
  /// - `"linux"` for Linux.
  /// - `"android"` for Android.
  /// - `"ios"` for iOS.
  /// - `"fuchsia"` for Fuchsia.
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
