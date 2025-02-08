/// Extension on [num] to enable fluent temporal unit conversions through
/// chainable duration getters.
///
/// Provides a declarative API for converting numeric values to [Duration]
/// objects using temporal unit semantics. Handles fractional values through
/// microsecond rounding.
///
/// ## Usage
/// ```dart
/// 250.ms // 250 milliseconds
/// 3.5.seconds // 3 seconds and 500 milliseconds
/// 0.1.minutes // 6 seconds
/// ```
///
/// ## Precision Notes
/// - All conversions ultimately use [Duration(microseconds:)] constructor
/// - Maximum precision: 1 microsecond (0.000001 seconds)
/// - Values are rounded to nearest microsecond
extension NumDurationExtensions on num {
  //----------------------------------------------------------------------------
  // Base Units
  //----------------------------------------------------------------------------

  /// Creates a [Duration] from this number interpreted as microseconds
  ///
  /// ```dart
  /// 1500.microseconds // 1.5 milliseconds
  /// 500000.microseconds // 0.5 seconds
  /// ```
  Duration get microseconds => Duration(microseconds: round());

  //----------------------------------------------------------------------------
  // Temporal Units
  //----------------------------------------------------------------------------

  /// Converts milliseconds to duration through microsecond conversion
  ///
  /// ```dart
  /// 250.ms // 250 milliseconds
  /// 1.5.ms // 1 millisecond 500 microseconds
  /// ```
  Duration get ms => (this * 1000).microseconds;

  /// Alias for [ms] with explicit unit name
  ///
  /// ```dart
  /// 100.milliseconds // Same as 100.ms
  /// ```
  Duration get milliseconds => ms;

  /// Converts seconds to duration through microsecond conversion
  ///
  /// ```dart
  /// 1.seconds // 1 second
  /// 0.5.seconds // 500 milliseconds
  /// ```
  Duration get seconds => (this * 1000 * 1000).microseconds;

  /// Converts minutes to duration through microsecond conversion
  ///
  /// ```dart
  /// 1.minutes // 1 minute
  /// 0.75.minutes // 45 seconds
  /// ```
  Duration get minutes => (this * 1000 * 1000 * 60).microseconds;

  /// Converts hours to duration through microsecond conversion
  ///
  /// ```dart
  /// 2.hours // 2 hours
  /// 1.25.hours // 1 hour 15 minutes
  /// ```
  Duration get hours => (this * 1000 * 1000 * 60 * 60).microseconds;

  /// Converts days to duration through microsecond conversion
  ///
  /// ```dart
  /// 3.days // 72 hours
  /// 0.5.days // 12 hours
  /// ```
  ///
  /// Note: Uses 24-hour day convention
  Duration get days => (this * 1000 * 1000 * 60 * 60 * 24).microseconds;

//----------------------------------------------------------------------------
// Time Conversion Logic
//----------------------------------------------------------------------------

  /// Conversion workflow:
  /// 1. Multiply numeric value by unit's microsecond factor
  /// 2. Round to nearest integer value
  /// 3. Construct Duration from calculated microseconds
  ///
  /// Example: 1.5.minutes
  /// → 1.5 * 60 * 1e6 = 90,000,000 μs
  /// → Duration(microseconds: 90000000) = 1 minute 30 seconds
}
