import 'dart:io';

import 'platform_type.dart';

/// A utility class to determine the current platform type.
///
/// This class provides a way to identify the operating system of the device
/// at runtime and categorizes it using the [PlatformType] enum. It simplifies
/// platform-specific logic by providing a single source of truth for the current platform.
///
/// ### Example Usage
/// ```dart
/// final platformType = DevicePlatformType.currentPlatformType;
///
/// if (platformType == PlatformType.Windows) {
///   print("Running on Windows");
/// }
/// ```
abstract final class DevicePlatformType {
  /// Gets the current platform type based on the runtime environment.
  ///
  /// Returns a [PlatformType] enum value representing the platform:
  /// - [PlatformType.Windows] if running on Windows.
  /// - [PlatformType.Fuchsia] if running on Fuchsia.
  /// - [PlatformType.MacOS] if running on macOS.
  /// - [PlatformType.Linux] if running on Linux.
  /// - [PlatformType.IOS] if running on iOS.
  /// - [PlatformType.Android] if running on Android.
  ///
  /// ### Note
  /// This method relies on the `dart:io` library's [Platform] class to
  /// determine the platform type.
  static PlatformType get currentPlatformType {
    if (Platform.isWindows) return PlatformType.Windows;
    if (Platform.isFuchsia) return PlatformType.Fuchsia;
    if (Platform.isMacOS) return PlatformType.MacOS;
    if (Platform.isLinux) return PlatformType.Linux;
    if (Platform.isIOS) return PlatformType.IOS;
    return PlatformType.Android;
  }
}
