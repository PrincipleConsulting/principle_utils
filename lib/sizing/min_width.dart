/// A utility class for defining standard minimum width values in Flutter applications.
///
/// The `MinWidth` class provides predefined constants for common width needs,
/// such as defining minimum widths for elements, containers, and layouts. These constants
/// are defined in Flutter's logical pixels, which are resolution-independent and scale
/// with the device's screen size and density.
///
/// ### Example Usage:
/// ```dart
/// Container(
///   width: MinWidth.w16, // Set minimum width to 16 logical pixels
/// );
/// ```
///
/// ### Note:
/// The width values are defined in **logical pixels**, which are device-independent units.
/// Logical pixels adapt to different device densities and screen sizes, ensuring consistent UI behavior.
abstract final class MinWidth {
  /// 0 logical pixels
  static const double w0 = 0.0;

  /// 1 logical pixel
  static const double wPx = 1.0;

  /// 2 logical pixels
  static const double w0_5 = 2.0;

  /// 4 logical pixels
  static const double w1 = 4.0;

  /// 6 logical pixels
  static const double w1_5 = 6.0;

  /// 8 logical pixels
  static const double w2 = 8.0;

  /// 10 logical pixels
  static const double w2_5 = 10.0;

  /// 12 logical pixels
  static const double w3 = 12.0;

  /// 14 logical pixels
  static const double w3_5 = 14.0;

  /// 16 logical pixels
  static const double w4 = 16.0;

  /// 20 logical pixels
  static const double w5 = 20.0;

  /// 24 logical pixels
  static const double w6 = 24.0;

  /// 28 logical pixels
  static const double w7 = 28.0;

  /// 32 logical pixels
  static const double w8 = 32.0;

  /// 36 logical pixels
  static const double w9 = 36.0;

  /// 40 logical pixels
  static const double w10 = 40.0;

  /// 44 logical pixels
  static const double w11 = 44.0;

  /// 48 logical pixels
  static const double w12 = 48.0;

  /// 56 logical pixels
  static const double w14 = 56.0;

  /// 64 logical pixels
  static const double w16 = 64.0;

  /// 80 logical pixels
  static const double w20 = 80.0;

  /// 96 logical pixels
  static const double w24 = 96.0;

  /// 112 logical pixels
  static const double w28 = 112.0;

  /// 128 logical pixels
  static const double w32 = 128.0;

  /// 144 logical pixels
  static const double w36 = 144.0;

  /// 160 logical pixels
  static const double w40 = 160.0;

  /// 176 logical pixels
  static const double w44 = 176.0;

  /// 192 logical pixels
  static const double w48 = 192.0;

  /// 208 logical pixels
  static const double w52 = 208.0;

  /// 224 logical pixels
  static const double w56 = 224.0;

  /// 240 logical pixels
  static const double w60 = 240.0;

  /// 256 logical pixels
  static const double w64 = 256.0;

  /// 288 logical pixels
  static const double w72 = 288.0;

  /// 320 logical pixels
  static const double w80 = 320.0;

  /// 384 logical pixels
  static const double w96 = 384.0;

  /// 448 logical pixels
  static const double w112 = 448.0;

  /// 512 logical pixels
  static const double w128 = 512.0;

  /// 576 logical pixels
  static const double w144 = 576.0;

  /// 640 logical pixels
  static const double w160 = 640.0;

  /// 704 logical pixels
  static const double w176 = 704.0;

  /// 768 logical pixels
  static const double w192 = 768.0;

  /// 832 logical pixels
  static const double w208 = 832.0;

  /// 896 logical pixels
  static const double w224 = 896.0;

  /// 960 logical pixels
  static const double w240 = 960.0;

  /// 1024 logical pixels
  static const double w256 = 1024.0;

  /// 1152 logical pixels
  static const double w288 = 1152.0;

  /// 1280 logical pixels
  static const double w320 = 1280.0;
}
