/// Extension on `num` to easily convert numeric values into `Duration` instances.
extension NumDurationExtensions on num {
  /// Converts the number to a `Duration` in microseconds.
  Duration get microseconds => Duration(microseconds: round());

  /// Converts the number (treated as milliseconds) to a `Duration`.
  Duration get ms => (this * 1000).microseconds;

  /// Alias for `ms`. Converts the number (treated as milliseconds) to a `Duration`.
  Duration get milliseconds => (this * 1000).microseconds;

  /// Converts the number (treated as seconds) to a `Duration`.
  Duration get seconds => (this * 1000 * 1000).microseconds;

  /// Converts the number (treated as minutes) to a `Duration`.
  Duration get minutes => (this * 1000 * 1000 * 60).microseconds;

  /// Converts the number (treated as hours) to a `Duration`.
  Duration get hours => (this * 1000 * 1000 * 60 * 60).microseconds;

  /// Converts the number (treated as days) to a `Duration`.
  Duration get days => (this * 1000 * 1000 * 60 * 60 * 24).microseconds;
}
