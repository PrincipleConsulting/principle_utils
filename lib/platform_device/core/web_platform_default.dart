import 'platform_type.dart';

/// Provides utilities for determining the current platform type.
///
/// The [DevicePlatformType] class uses a static getter [currentPlatformType]
/// to determine the platform on which the application is running. This is useful
/// for implementing platform-specific behavior in a clean and maintainable way.
///
/// ### Example Usage
/// ```dart
/// if (DevicePlatformType.currentPlatformType == PlatformType.Web) {
///   print("Running on Web!");
/// }
/// ```
abstract final class DevicePlatformType {
  /// Retrieves the current platform type.
  ///
  /// This implementation is currently hardcoded to return [PlatformType.Web].
  /// In a real-world scenario, this logic would detect the actual platform dynamically.
  static PlatformType get currentPlatformType => PlatformType.Web;
}
