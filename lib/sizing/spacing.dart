/// A utility class for defining standard spacing values in Flutter applications.
///
/// The `SpacingSpace` class provides predefined constants for common spacing
/// needs such as padding, margins, and visual separation between UI elements.
/// These constants are defined in Flutter's logical pixels and help ensure
/// consistency and clarity across the UI.
///
/// ### Spacing Categories:
/// - **Small Spacing**: For tight gaps, padding, or minor visual separations.
/// - **Medium Spacing**: For regular content separation or padding between sections.
/// - **Large Spacing**: For larger gaps between major sections or large margins.
///
/// ### Example Usage:
/// ```dart
/// Container(
///   padding: EdgeInsets.all(SpacingSpace.sp16), // Medium spacing around content
///   child: Text('Hello, World!'),
/// );
/// ```
///
/// ### Note:
/// The spacing values are defined in logical pixels, which are resolution-independent
/// and adapt based on the device's screen size and density.
abstract final class SpacingSpace {
  /// Smallest spacing, useful for tight spaces (in logical pixels).
  static const double sp4 = 4;

  /// Slightly larger than 4px spacing (in logical pixels).
  static const double sp5 = 5;

  /// Common for small padding in buttons or icons (in logical pixels).
  static const double sp6 = 6;

  /// Used for minor visual separation (in logical pixels).
  static const double sp7 = 7;

  /// Common margin for cards or elements (in logical pixels).
  static const double sp8 = 8;

  /// Frequently used for small gaps in between items (in logical pixels).
  static const double sp10 = 10;

  /// Standard small spacing for cards and buttons (in logical pixels).
  static const double sp12 = 12;

  /// Medium-small space for slight separation (in logical pixels).
  static const double sp14 = 14;

  // Medium Spacing (Used for regular content separation, padding, or margins)

  /// Ideal for regular padding or margin (in logical pixels).
  static const double sp16 = 16;

  /// Medium space often used for content grouping (in logical pixels).
  static const double sp18 = 18;

  /// Standard for separating sections or elements (in logical pixels).
  static const double sp20 = 20;

  /// Slightly larger than 20px for visual breathing room (in logical pixels).
  static const double sp22 = 22;

  /// Common for consistent separation in layouts (in logical pixels).
  static const double sp24 = 24;

  /// Slightly larger than 24px for additional spacing (in logical pixels).
  static const double sp26 = 26;

  // Large Spacing (Used for larger gaps, padding, or between major sections)

  /// Large spacing, typically for sections or large margins (in logical pixels).
  static const double sp48 = 48;

  /// Slightly more than 48px, used for major separations (in logical pixels).
  static const double sp50 = 50;

  /// Used for very large gaps between sections or cards (in logical pixels).
  static const double sp96 = 96;

  /// Similar to 96px, used for very large margins/padding (in logical pixels).
  static const double sp98 = 98;
}
