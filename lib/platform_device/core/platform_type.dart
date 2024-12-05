// ignore_for_file: constant_identifier_names

/// Enum representing various platform types.
///
/// The [PlatformType] enum categorizes the operating systems and environments
/// supported by the application. This is used in conjunction with platform-detection
/// utilities to handle platform-specific logic in a clean and organized manner.
///
/// ### Available Values:
/// - [Web]: Represents web-based environments.
/// - [Windows]: Represents the Windows operating system.
/// - [Linux]: Represents the Linux operating system.
/// - [MacOS]: Represents the macOS operating system.
/// - [Android]: Represents the Android operating system.
/// - [Fuchsia]: Represents the Fuchsia operating system.
/// - [IOS]: Represents the iOS operating system.
///
/// ### Example Usage
/// ```dart
/// PlatformType platform = PlatformType.Android;
///
/// switch (platform) {
///   case PlatformType.Web:
///     print("Running on Web");
///     break;
///   case PlatformType.Windows:
///     print("Running on Windows");
///     break;
///   case PlatformType.Android:
///     print("Running on Android");
///     break;
///   // Handle other cases...
/// }
/// ```
enum PlatformType {
  /// Represents web-based platforms.
  Web,

  /// Represents the Windows operating system.
  Windows,

  /// Represents the Linux operating system.
  Linux,

  /// Represents the macOS operating system.
  MacOS,

  /// Represents the Android operating system.
  Android,

  /// Represents the Fuchsia operating system.
  Fuchsia,

  /// Represents the iOS operating system.
  IOS,
}
