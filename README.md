```markdown
# Principle Utils

A Dart utility package containing custom colors, extensions, sizing utilities, and common types for Principle projects.

## Overview

This package provides a set of helpful utilities to streamline Flutter development for Principle projects. It includes:

* **Custom Colors:** A set of color definitions widely used at Principle, ensuring brand consistency across projects.
* **Extensions:** Dart extension functions for various classes, simplifying common operations and improving code readability.
* **Sizing:** Utilities for managing dimensions and spacing in your layouts, promoting a unified visual style.
* **Types:** Common type definitions and aliases, enhancing code clarity and maintainability.

## Installation

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  principle_utils: latest_version
```
```

Then, run:

```sh
dart pub get
```

## Features

### Fluent Text Styling

Enhance `TextStyle` with chainable extensions for declarative styling.

#### Example:

```dart
Text(
  'Hello, Flutter!',
  style: const TextStyle().bold.size(20).textColor(Colors.blue).underline,
);
```

### Duration Extensions

Convert numeric values to `Duration` objects using a fluent API.

#### Example:

```dart
final duration = 3.5.seconds; // 3 seconds and 500 milliseconds
```

### Random Utilities

A global `Random` instance with extensions for random number generation, booleans, angles, and colors.

#### Example:

```dart
final randomValue = rnd.getInt(1, 10); // Random integer between 1 and 9
final randomColor = rnd.getColor(); // Random color
```

### Platform Detection

Easily determine the current platform type.

#### Example:

```dart
if (PlatformDevice.isMobile) {
  print("Running on a mobile device");
}
```

### Data State Management

A base class for handling data and error states.

#### Example:

```dart
DataState<String, int> state = DataSuccess(42);
if (state.isSuccess) {
  print("Success: ${state.data}");
}
```

### Standardized UI Values

#### Spacing Constants:
Predefined spacing values for consistent padding and margins.

```dart
Container(padding: EdgeInsets.all(TWSpace.sp16));
```

#### Size Constants:
Standardized UI dimensions.

```dart
Container(width: TWSize.s32);
```

#### Font Sizes:
Consistent typography sizes.

```dart
TextStyle(fontSize: TWFontSize.textBaseFontSize);
```

#### Elevation Levels:
Predefined elevation values for consistent shadow effects.

```dart
Material(elevation: TWElevation.e10);
```

## Contributing

Contributions are welcome! Feel free to submit a pull request or open an issue.

## License

This project is licensed under the MIT License.
```

