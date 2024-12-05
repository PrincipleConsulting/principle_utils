/// A utility class for defining standard size values in Flutter applications.
///
/// The `Size` class provides predefined constants for common size needs such as
/// element dimensions, spacing, and padding. These constants are defined in Flutter's
/// logical pixels, which are resolution-independent and scale with the device's screen size
/// and density.
///
/// ### Example Usage:
/// ```dart
/// Container(
///   width: Size.s16, // Set width to 16 logical pixels
///   height: Size.s20, // Set height to 20 logical pixels
/// );
/// ```
///
/// ### Note:
/// The size values are defined in **logical pixels**, which are device-independent units.
/// Logical pixels are based on the screen resolution and adapt to different device densities.
abstract final class Size {
  /// 0 logical pixels
  static const double s0 = 0.0;

  /// 1 logical pixel
  static const double sPx = 1.0;

  /// 2 logical pixels
  static const double s0_5 = 2.0;

  /// 4 logical pixels
  static const double s1 = 4.0;

  /// 6 logical pixels
  static const double s1_5 = 6.0;

  /// 8 logical pixels
  static const double s2 = 8.0;

  /// 10 logical pixels
  static const double s2_5 = 10.0;

  /// 12 logical pixels
  static const double s3 = 12.0;

  /// 14 logical pixels
  static const double s3_5 = 14.0;

  /// 16 logical pixels
  static const double s4 = 16.0;

  /// 20 logical pixels
  static const double s5 = 20.0;

  /// 24 logical pixels
  static const double s6 = 24.0;

  /// 28 logical pixels
  static const double s7 = 28.0;

  /// 32 logical pixels
  static const double s8 = 32.0;

  /// 36 logical pixels
  static const double s9 = 36.0;

  /// 40 logical pixels
  static const double s10 = 40.0;

  /// 44 logical pixels
  static const double s11 = 44.0;

  /// 48 logical pixels
  static const double s12 = 48.0;

  /// 56 logical pixels
  static const double s14 = 56.0;

  /// 64 logical pixels
  static const double s16 = 64.0;

  /// 80 logical pixels
  static const double s20 = 80.0;

  /// 96 logical pixels
  static const double s24 = 96.0;

  /// 112 logical pixels
  static const double s28 = 112.0;

  /// 128 logical pixels
  static const double s32 = 128.0;

  /// 144 logical pixels
  static const double s36 = 144.0;

  /// 160 logical pixels
  static const double s40 = 160.0;

  /// 176 logical pixels
  static const double s44 = 176.0;

  /// 192 logical pixels
  static const double s48 = 192.0;

  /// 208 logical pixels
  static const double s52 = 208.0;

  /// 224 logical pixels
  static const double s56 = 224.0;

  /// 240 logical pixels
  static const double s60 = 240.0;

  /// 256 logical pixels
  static const double s64 = 256.0;

  /// 288 logical pixels
  static const double s72 = 288.0;

  /// 320 logical pixels
  static const double s80 = 320.0;

  /// 384 logical pixels
  static const double s96 = 384.0;

  /// 448 logical pixels
  static const double s112 = 448.0;

  /// 512 logical pixels
  static const double s128 = 512.0;

  /// 576 logical pixels
  static const double s144 = 576.0;

  /// 640 logical pixels
  static const double s160 = 640.0;

  /// 704 logical pixels
  static const double s176 = 704.0;

  /// 768 logical pixels
  static const double s192 = 768.0;

  /// 832 logical pixels
  static const double s208 = 832.0;

  /// 896 logical pixels
  static const double s224 = 896.0;

  /// 960 logical pixels
  static const double s240 = 960.0;

  /// 1024 logical pixels
  static const double s256 = 1024.0;

  /// 1152 logical pixels
  static const double s288 = 1152.0;

  /// 1280 logical pixels
  static const double s320 = 1280.0;
}
