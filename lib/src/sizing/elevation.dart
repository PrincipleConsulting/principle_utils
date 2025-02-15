/// A utility class for defining standard elevation values for widget shadows in Flutter.
///
/// The `TWElevation` class provides a set of predefined constants that represent
/// elevation levels in logical pixels. These constants can be used to standardize
/// the shadow depth across your Flutter application when using Material widgets
/// or custom components that support an `elevation` property. A higher elevation value
/// results in a more pronounced shadow, indicating that the widget appears to be raised
/// further above the surface.
///
/// ### Example Usage:
/// ```dart
/// Material(
///   elevation: TWElevation.e10, // Sets the elevation to 10 logical pixels.
///   child: Container(
///     width: 100,
///     height: 100,
///     color: Colors.blue,
///   ),
/// );
/// ```
///
/// ### Note:
/// - Elevation values are defined in **logical pixels**, which are device-independent.
/// - These constants help maintain consistent elevation levels throughout your app.
abstract final class TWElevation {
  /// Default elevation: 0 logical pixels.
  static const int e0 = 0;

  /// Elevation value of 10 logical pixels.
  static const int e10 = 10;

  /// Elevation value of 20 logical pixels.
  static const int e20 = 20;

  /// Elevation value of 30 logical pixels.
  static const int e30 = 30;

  /// Elevation value of 40 logical pixels.
  static const int e40 = 40;

  /// Elevation value of 50 logical pixels.
  static const int e50 = 50;
}
