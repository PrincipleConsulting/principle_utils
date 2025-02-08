import 'dart:math';
import 'dart:ui';

bool useWhiteForeground(Color backgroundColor, {double bias = 0.0}) {
  int v = sqrt(pow(backgroundColor.r, 2) * 0.299 + pow(backgroundColor.g, 2) * 0.587 + pow(backgroundColor.b, 2) * 0.114).round();
  return v < 130 + bias ? true : false;
}
