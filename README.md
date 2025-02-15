# Principle Utils

A Dart utility package containing custom colors, extensions, sizing utilities, and common types for Principle projects.

## Overview

This package provides a set of helpful utilities to streamline Flutter development for Principle projects. It includes:

- **Extensions:** Dart extension functions that simplify common operations and improve code readability.
    - Screen Utilities
    - Base Dimensions
- **Sizing:** Utilities for managing dimensions and spacing in layouts, promoting a unified visual style.
- **Custom Colors:** A set of predefined colors ensuring brand consistency across projects.
- **Types:** Common type definitions and aliases, enhancing code clarity and maintainability.
- **Platform Device Detection:** A set of helpers to identify the current platform.

## Installation

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  principle_utils: latest_version
```

Then, run:

```sh
dart pub get
```

## Features

### Extensions

Enhance your Flutter code with useful extensions:

- **Screen Utilities:** Access screen dimensions, orientation, and scaling factors.

  ```dart
  double widthFraction = context.widthPct(0.5); // 50% of the screen width
  double scaledHeight = context.scaleBaseHeight(); // Scale height relative to base
  double scaledWidth = context.scaleBaseWidth(); // Scale width relative to base
  bool isLandscape = context.isLandscape; // Check if in landscape mode
  ```
Access screen properties, responsive values, and scale dimensions.

```dart
// Responsive values based on screen width breakpoints
double padding = context.responsive<double>(
16,   // Default
sm: 24, // ≥640px
md: 32, // ≥768px
lg: 40, // ≥1024px
xl: 48, // ≥1280px
);

// Existing scaling utilities
double scaledH = context.scaleBaseHeight(100);
bool isLandscape = context.isLandscape;
```

- **Base Dimensions:** Use predefined base dimensions for consistent scaling.

  ```dart
  const double baseWidth = 375.0;
  const double baseHeight = 812.0;
  ```

- **Fluent Text Styling:** Chain methods for styling text.

  ```dart
  Text(
    'Hello, Flutter!',
    style: const TextStyle().bold.size(20).textColor(Colors.blue).underline,
  );
  ```

- **Duration Extensions:** Convert numeric values into `Duration` objects.

  ```dart
  final duration = 3.5.seconds; // 3 seconds and 500 milliseconds
  ```

- **Random Utilities:** Generate random numbers, booleans, angles, and colors.

  ```dart
  final randomValue = rnd.getInt(1, 10); // Random integer between 1 and 9
  final randomColor = rnd.getColor(); // Random color
  ```
  
### Sizing

Improve your responsive layouts with screen and sizing utilities:

- **Standardized UI Values:** Maintain consistency in spacing, sizing, typography, and elevation.

    - **Spacing Constants:**
      ```dart
      Container(padding: EdgeInsets.all(TWSpace.sp16));
      ```

    - **Size Constants:**
      ```dart
      Container(width: TWSize.s32);
      ```

    - **Font Sizes:**
      ```dart
      TextStyle(fontSize: TWFontSize.textBaseFontSize);
      ```

    - **Elevation Levels:**
      ```dart
      Material(elevation: TWElevation.e10);
      ```

### Custom Colors

Maintain brand consistency with predefined custom colors:

```dart
Color primaryColor = CustomColors.blue500;
Color accentColor = CustomColors.orange500;
```

### Types

Enhance code clarity with common type definitions and data management utilities:

- **Data State Management:** Handle data and error states effectively.

  ```dart
  DataState<String, int> state = DataSuccess(42);
  if (state.isSuccess) {
    print("Success: \${state.data}");
  }
  ```

- **Additional Type Aliases:** Utilize custom types to improve readability and maintainability.

    - **UseCase:** A standard structure for implementing use cases.

      ```dart
      // Example usage
      class GetUserDetailsUseCase extends UseCase<User, int> {
        @override
        Future<User> call({int? params}) async {
          return User(id: params, name: "John Doe");
        }
      }
      ```

    - **Tuple:** A tuple with two elements.

      ```dart 
      // Example usage
      Tuple<int, String> pair = (first: 42, last: 'Hello');
      print(pair.first); // 42
      print(pair.last); // 'Hello'
      ```

    - **KeyValuePair:** A key-value pair structure.

      ```dart
      // Example usage
      KeyValuePair<int> pair = (key: 'age', val: 25);
      print(pair.key); // 'age'
      print(pair.val); // 25
      ```

### Platform Device Detection

Easily detect the current platform to tailor your UI:

```dart
if (PlatformDevice.isMobile) {
  print("Running on a mobile device");
}
```

## Contributing

Contributions are welcome! Feel free to submit a pull request or open an issue.

## License

This project is licensed under the MIT License.