import 'dart:math';

import 'package:flutter/material.dart';

int _seed = DateTime.now().millisecondsSinceEpoch;

/// A globally accessible instance of [Random] for generating random values.
///
/// Initialized with a seed based on the current time in milliseconds since epoch.
/// Use [rndSeed] to get or set the seed for reproducible randomness.
Random rnd = Random(_seed);

/// Updates the seed for the global [Random] instance.
///
/// Setting a new seed reinitialized the [rnd] instance, ensuring reproducible
/// random sequences for testing or debugging.
set rndSeed(int seed) => rnd = Random(_seed = seed);

/// Retrieves the current seed of the global [Random] instance.
///
/// Useful for debugging or reproducing random sequences.
int get rndSeed => _seed;

/// Extensions for the [Random] class to simplify and extend random value generation.
///
/// Provides methods for generating random numbers, booleans, angles, colors, and more,
/// with support for ranges, curves, and customizable parameters.
extension RandomExtensions on Random {
  //----------------------------------------------------------------------------
  // Random Number Generation
  //----------------------------------------------------------------------------

  /// Generates a random `double` within a range. Defaults to [0, 1] if no arguments are provided.
  ///
  /// - If only [min] is provided, the range is [0, min].
  /// - If both [min] and [max] are provided, the range is [min, max].
  ///
  /// ```dart
  /// rnd(10.0); // Random double between 0.0 and 10.0
  /// rnd(5.0, 15.0); // Random double between 5.0 and 15.0
  /// ```
  double call([double? min, double? max]) {
    if (max == null) {
      max = min ?? 1.0;
      min = 0.0;
    }
    return getDouble(min!, max);
  }

  /// Generates a random `int` within a range, optionally influenced by a [Curve].
  ///
  /// - [min]: Inclusive lower bound.
  /// - [max]: Exclusive upper bound.
  /// - [curve]: Optional curve to skew the distribution of values.
  ///
  /// ```dart
  /// rnd.getInt(1, 10); // Random integer between 1 and 9
  /// rnd.getInt(1, 10, curve: Curves.easeIn); // Skewed distribution
  /// ```
  int getInt(int min, int max, {Curve? curve}) {
    return curve == null ? min + nextInt(max - min) : getDouble(min * 1.0, max * 1.0, curve: curve).toInt();
  }

  /// Generates a random `double` within a range, optionally influenced by a [Curve].
  ///
  /// - [min]: Inclusive lower bound.
  /// - [max]: Inclusive upper bound.
  /// - [curve]: Optional curve to skew the distribution of values.
  ///
  /// ```dart
  /// rnd.getDouble(1.0, 10.0); // Random double between 1.0 and 10.0
  /// rnd.getDouble(1.0, 10.0, curve: Curves.easeOut); // Skewed distribution
  /// ```
  double getDouble(double min, double max, {Curve? curve}) {
    return curve == null ? min + nextDouble() * (max - min) : min + curve.transform(nextDouble()) * (max - min);
  }

  //----------------------------------------------------------------------------
  // Random Boolean and Bit Generation
  //----------------------------------------------------------------------------

  /// Returns a random boolean with a specified probability for `true`.
  ///
  /// - [chance]: Probability of returning `true` (default is 0.5).
  ///
  /// ```dart
  /// rnd.getBool(); // 50% chance of true
  /// rnd.getBool(0.8); // 80% chance of true
  /// ```
  bool getBool([double chance = 0.5]) => nextDouble() < chance;

  /// Returns a random bit (0 or 1) with a specified probability for `1`.
  ///
  /// - [chance]: Probability of returning `1` (default is 0.5).
  ///
  /// ```dart
  /// rnd.getBit(); // 50% chance of 1
  /// rnd.getBit(0.3); // 30% chance of 1
  /// ```
  int getBit([double chance = 0.5]) => nextDouble() < chance ? 1 : 0;

  /// Returns a random sign (-1 or 1) with a specified probability for `1`.
  ///
  /// - [chance]: Probability of returning `1` (default is 0.5).
  ///
  /// ```dart
  /// rnd.getSign(); // 50% chance of 1
  /// rnd.getSign(0.7); // 70% chance of 1
  /// ```
  int getSign([double chance = 0.5]) => nextDouble() < chance ? 1 : -1;

  //----------------------------------------------------------------------------
  // Random Angle Generation
  //----------------------------------------------------------------------------

  /// Generates a random angle in degrees (0 to 360).
  ///
  /// ```dart
  /// rnd.getDeg(); // Random angle between 0° and 360°
  /// ```
  double getDeg() => nextDouble() * 360.0;

  /// Generates a random angle in radians (0 to 2π).
  ///
  /// ```dart
  /// rnd.getRad(); // Random angle between 0 and 2π
  /// ```
  double getRad() => nextDouble() * pi * 2.0;

  //----------------------------------------------------------------------------
  // Random Color Generation
  //----------------------------------------------------------------------------

  /// Generates a random color with customizable parameters for opacity, hue, saturation, and lightness.
  ///
  /// - [opacity]: Optional opacity (default is random between 1.0 and 1.0).
  /// - [hue]: Optional hue (default is random between 0° and 360°).
  /// - [saturation]: Optional saturation (default is random between 0.0 and 1.0).
  /// - [lightness]: Optional lightness (default is random between 0.0 and 1.0).
  ///
  /// ```dart
  /// rnd.getColor(); // Fully random color
  /// rnd.getColor(hue: Hue.blue); // Random color with blue hue
  /// rnd.getColor(opacity: 0.5, lightness: 0.8); // Semi-transparent pastel color
  /// ```
  Color getColor({
    double? opacity,
    double minOpacity = 1.0,
    double maxOpacity = 1.0,
    double? hue,
    double hueRange = 0.0,
    double minHue = 0.0,
    double maxHue = 360.0,
    double? saturation,
    double minSaturation = 0.0,
    double maxSaturation = 1.0,
    double? lightness,
    double minLightness = 0.0,
    double maxLightness = 1.0,
  }) {
    minHue = (hue == null ? minHue : hue - hueRange) % 360;
    maxHue = (hue == null ? maxHue : hue + hueRange) % 360;
    if (minHue > maxHue) {
      minHue -= 360;
    }

    return HSLColor.fromAHSL(opacity ?? getDouble(minOpacity, maxOpacity), getDouble(minHue, maxHue) % 360,
            saturation ?? getDouble(minSaturation, maxSaturation), lightness ?? getDouble(minLightness, maxLightness))
        .toColor();
  }

  //----------------------------------------------------------------------------
  // Random List Operations
  //----------------------------------------------------------------------------

  /// Picks a random item from a list. Optionally removes it or skews selection with a [Curve].
  ///
  /// - [list]: The list to pick from.
  /// - [curve]: Optional curve to skew the selection.
  /// - [remove]: If `true`, removes the selected item from the list.
  ///
  /// ```dart
  /// final list = [1, 2, 3, 4];
  /// rnd.getItem(list); // Random item from the list
  /// rnd.getItem(list, remove: true); // Removes and returns a random item
  /// ```
  T getItem<T>(List<T> list, {Curve? curve, bool remove = false}) {
    final int i = getInt(0, list.length, curve: curve);
    return remove ? list.removeAt(i) : list[i];
  }

  /// Randomizes the order of a list. Optionally creates a shuffled copy.
  ///
  /// - [list]: The list to shuffle.
  /// - [copy]: If `true`, shuffles a copy of the list instead of the original.
  ///
  /// ```dart
  /// final list = [1, 2, 3, 4];
  /// rnd.shuffle(list); // Shuffles the original list
  /// rnd.shuffle(list, copy: true); // Returns a shuffled copy
  /// ```
  List<T> shuffle<T>(List<T> list, {bool copy = false}) {
    if (copy) {
      list = [...list];
    }
    for (int i = 0, l = list.length; i < l; i++) {
      int j = nextInt(l);
      if (j == i) continue;
      T item = list[j];
      list[j] = list[i];
      list[i] = item;
    }
    return list;
  }
}

//----------------------------------------------------------------------------
// Hue Constants
//----------------------------------------------------------------------------

/// Hue values for primary and secondary colors, useful with [RandomExtensions.getColor].
///
/// These constants represent hue values in degrees (0° to 360°) for common colors.
class Hue {
  static const double red = 0.0;
  static const double green = 120.0;
  static const double blue = 240.0;
  static const double yellow = 60.0;
  static const double cyan = 180.0;
  static const double magenta = 300.0;
}
