import 'dart:math';
import 'dart:ui';

bool useWhiteForeground(Color backgroundColor, {double bias = 0.0}) {
  final int v = sqrt(pow(backgroundColor.r * 255, 2) * 0.299 +
          pow(backgroundColor.g * 255, 2) * 0.587 +
          pow(backgroundColor.b * 255, 2) * 0.114)
      .round();
  return v < (130 + bias);
}
