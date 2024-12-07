/// A utility class that holds commonly used border radius values.
abstract final class RadiusSize {
  /// Small radii for subtle curves
  static const double small = 4.0;

  /// Medium radii for moderate curves
  static const double medium = 8.0;

  /// Large radii for more pronounced curves
  static const double large = 12.0;

  /// Extra large radii for high visual impact
  static const double extraLarge = 24.0;

  /// Circular border radius for rounded shapes
  static const double circular = 50.0;

  /// Border radius for extreme roundness (pill shape)
  static const double pill = 100.0;

  /// Minimal radius for very subtle curves (used for very sharp edges)
  static const double minimal = 2.0;

  /// Radius for larger, smoother curves in larger components
  static const double huge = 36.0;

  /// Very large radius, usually for cards or large buttons
  static const double veryLarge = 48.0;

  /// Custom radius for special cases
  static const double customRadius = 60.0;

  /// Ultra-large radius for extreme curvature in custom designs
  static const double ultraLarge = 72.0;
}

/// A utility class that holds commonly used border width values.
abstract final class BorderWidth {
  /// Default no-border width (thin line)
  static const double thin = 1.0;

  /// Standard width for borders (regular)
  static const double standard = 2.0;

  /// Thick border width for more emphasis
  static const double thick = 4.0;

  /// Extra thick border for emphasis
  static const double extraThick = 6.0;

  /// Custom border width for more flexibility
  static const double customWidth = 8.0;

  /// Very thin border for subtle designs
  static const double veryThin = 0.5;

  /// Wider borders for heavier emphasis, typically used in UI cards or containers
  static const double wide = 12.0;

  /// Heavy border used in high contrast designs (e.g., warning states)
  static const double heavy = 16.0;

  /// Extreme width, usually for highly emphasized UI elements
  static const double extraWide = 20.0;

  /// Ultra-thick border, used for UI elements requiring maximum emphasis
  static const double ultraWide = 24.0;

  /// Custom extra-wide border for special needs
  static const double superWide = 30.0;
}
