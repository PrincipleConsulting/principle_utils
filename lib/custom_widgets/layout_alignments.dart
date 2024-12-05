import 'package:flutter/material.dart';

/// Custom `Align` widget that aligns the child at the top-left of its parent container.
class TopLeft extends Align {
  const TopLeft({
    super.key, // Optional key to uniquely identify this widget.
    super.widthFactor, // Optional factor for the width of the widget.
    super.heightFactor, // Optional factor for the height of the widget.
    super.child, // The widget that will be aligned inside the container.
  }) : super(
          alignment: Alignment.topLeft, // Aligns the child to the top-left.
        );
}

/// Custom `Align` widget that aligns the child at the top-center of its parent container.
class TopCenter extends Align {
  const TopCenter({
    super.key, // Optional key to uniquely identify this widget.
    super.widthFactor, // Optional factor for the width of the widget.
    super.heightFactor, // Optional factor for the height of the widget.
    super.child, // The widget that will be aligned inside the container.
  }) : super(
          alignment: Alignment.topCenter, // Aligns the child to the top-center.
        );
}

/// Custom `Align` widget that aligns the child at the top-right of its parent container.
class TopRight extends Align {
  const TopRight({
    super.key, // Optional key to uniquely identify this widget.
    super.widthFactor, // Optional factor for the width of the widget.
    super.heightFactor, // Optional factor for the height of the widget.
    super.child, // The widget that will be aligned inside the container.
  }) : super(
          alignment: Alignment.topRight, // Aligns the child to the top-right.
        );
}

/// Custom `Align` widget that aligns the child at the center-left of its parent container.
class CenterLeft extends Align {
  const CenterLeft({
    super.key, // Optional key to uniquely identify this widget.
    super.widthFactor, // Optional factor for the width of the widget.
    super.heightFactor, // Optional factor for the height of the widget.
    super.child, // The widget that will be aligned inside the container.
  }) : super(
          alignment: Alignment.centerLeft, // Aligns the child to the center-left.
        );
}

/// Custom `Align` widget that aligns the child at the center-right of its parent container.
class CenterRight extends Align {
  const CenterRight({
    super.key, // Optional key to uniquely identify this widget.
    super.widthFactor, // Optional factor for the width of the widget.
    super.heightFactor, // Optional factor for the height of the widget.
    super.child, // The widget that will be aligned inside the container.
  }) : super(
          alignment: Alignment.centerRight, // Aligns the child to the center-right.
        );
}

/// Custom `Align` widget that aligns the child at the bottom-left of its parent container.
class BottomLeft extends Align {
  const BottomLeft({
    super.key, // Optional key to uniquely identify this widget.
    super.widthFactor, // Optional factor for the width of the widget.
    super.heightFactor, // Optional factor for the height of the widget.
    super.child, // The widget that will be aligned inside the container.
  }) : super(
          alignment: Alignment.bottomLeft, // Aligns the child to the bottom-left.
        );
}

/// Custom `Align` widget that aligns the child at the bottom-center of its parent container.
class BottomCenter extends Align {
  const BottomCenter({
    super.key, // Optional key to uniquely identify this widget.
    super.widthFactor, // Optional factor for the width of the widget.
    super.heightFactor, // Optional factor for the height of the widget.
    super.child, // The widget that will be aligned inside the container.
  }) : super(
          alignment: Alignment.bottomCenter, // Aligns the child to the bottom-center.
        );
}

/// Custom [Align] widget that aligns the child at the bottom-right of its parent container.
class BottomRight extends Align {
  const BottomRight({
    super.key, // Optional key to uniquely identify this widget.
    super.widthFactor, // Optional factor for the width of the widget.
    super.heightFactor, // Optional factor for the height of the widget.
    super.child, // The widget that will be aligned inside the container.
  }) : super(
          alignment: Alignment.bottomRight, // Aligns the child to the bottom-right.
        );
}
