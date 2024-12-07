/// A utility class for defining z-index values for widget stacking order.
///
/// The `ZIndex` class provides a set of predefined constants for specifying
/// the stacking order of widgets in a Flutter application. These constants
/// can help maintain consistency and readability when layering widgets.
///
/// ### Example Usage
/// ```dart
/// Stack(
///   children: [
///     Positioned(
///       child: Container(
///         color: Colors.blue,
///         width: 100,
///         height: 100,
///       ),
///     ),
///     Positioned(
///       child: Container(
///         color: Colors.red,
///         width: 50,
///         height: 50,
///         alignment: Alignment.topLeft,
///       ),
///       top: 10,
///       left: 10,
///       // Apply z-index if using a custom stacking mechanism
///       // Example:
///       // decoration.zIndex = ZIndex.z10;
///     ),
///   ],
/// );
/// ```
///
/// The higher the z-index value, the closer the widget appears to the user in
/// the stacking order.
abstract final class ZIndexLP {
  /// Default z-index: 0.
  static const int z0 = 0;

  /// Z-index value of 10.
  static const int z10 = 10;

  /// Z-index value of 20.
  static const int z20 = 20;

  /// Z-index value of 30.
  static const int z30 = 30;

  /// Z-index value of 40.
  static const int z40 = 40;

  /// Z-index value of 50.
  static const int z50 = 50;
}
