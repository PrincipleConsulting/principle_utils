import 'dart:math';

import 'package:flutter/material.dart';

int _seed = DateTime.now().millisecondsSinceEpoch;

/// Globally accessible instance of `Random` for generating random values.
Random rnd = Random(_seed);

/// Updates the seed for the global `Random` instance.
set rndSeed(int seed) => rnd = Random(_seed = seed);

/// Retrieves the current seed of the global `Random` instance.
int get rndSeed => _seed;

/// Extensions for the `Random` class to simplify and extend random value generation.
extension RandomExtensions on Random {
  /// Generates a random `double` within a range. Defaults to [0, 1] if no arguments are provided.
  double call([double? min, double? max]) {
    if (max == null) {
      max = min ?? 1.0;
      min = 0.0;
    }
    return getDouble(min!, max);
  }

  /// Generates a random `int` within a range, optionally influenced by a curve.
  int getInt(int min, int max, {Curve? curve}) {
    return curve == null ? min + nextInt(max - min) : getDouble(min * 1.0, max * 1.0, curve: curve).toInt();
  }

  /// Generates a random `double` within a range, optionally influenced by a curve.
  double getDouble(double min, double max, {Curve? curve}) {
    return curve == null
        ? min + nextDouble() * (max - min)
        : min + curve.transform(nextDouble()) * (max - min);
  }

  /// Returns a random boolean with a specified probability for `true`.
  bool getBool([double chance = 0.5]) => nextDouble() < chance;

  /// Returns a random bit (0 or 1) with a specified probability for `1`.
  int getBit([double chance = 0.5]) => nextDouble() < chance ? 1 : 0;

  /// Returns a random sign (-1 or 1) with a specified probability for `1`.
  int getSign([double chance = 0.5]) => nextDouble() < chance ? 1 : -1;

  /// Generates a random angle in degrees (0 to 360).
  double getDeg() => nextDouble() * 360.0;

  /// Generates a random angle in radians (0 to 2π).
  double getRad() => nextDouble() * pi * 2.0;

  /// Generates a random color with customizable parameters for opacity, hue, saturation, and lightness.
  Color getColor({
    double? opacity,
    double? hue,
    double? saturation,
    double? lightness,
  }) {
    const double minOpacity = 1.0;
    const double maxOpacity = 1.0;
    const double minSaturation = 0.0;
    const double maxSaturation = 1.0;
    const double minLightness = 0.0;
    const double maxLightness = 1.0;

    const double hueRange = 0.0;
    double minHue = 0.0;
    double maxHue = 360.0;

    minHue = (hue == null ? minHue : hue - hueRange) % 360;
    maxHue = (hue == null ? maxHue : hue + hueRange) % 360;
    if (minHue > maxHue) {
      minHue -= 360;
    }
    return HSLColor.fromAHSL(
            opacity ?? getDouble(minOpacity, maxOpacity),
            getDouble(minHue, maxHue) % 360,
            saturation ?? getDouble(minSaturation, maxSaturation),
            lightness ?? getDouble(minLightness, maxLightness))
        .toColor();
  }

  /// Picks a random item from a list. Optionally removes it or skews selection with a curve.
  T getItem<T>(List<T> list, {Curve? curve, bool remove = false}) {
    final int i = getInt(0, list.length, curve: curve);
    return remove ? list.removeAt(i) : list[i];
  }

  /// Randomizes the order of a list. Optionally creates a shuffled copy.
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

/// Hue values for primary and secondary colors, useful with `getColor()`.
class Hue {
  static const double red = 0.0;
  static const double green = 120.0;
  static const double blue = 240.0;
  static const double yellow = 60.0;
  static const double cyan = 180.0;
  static const double magenta = 300.0;
}
