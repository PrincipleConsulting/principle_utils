# Principle Utils

[![Pub Version](https://img.shields.io/pub/v/principle_utils?color=blue)](https://pub.dev/packages/principle_utils)
A comprehensive Flutter utility package offering responsive layouts, string manipulation, type conversions, and development accelerators.

## Table of Contents
- [Overview](#overview)
- [Installation](#installation)
- [Features](#features)
  - [Extensions](#extensions)
  - [Sizing](#sizing-system)
  - [Custom Colors](#custom-colors)
  - [Types](#type-utilities)
  - [Platform Detection](#platform-device-detection)
- [Usage Examples](#usage-examples)
- [Contributing](#contributing)
- [License](#license)

## Overview

Supercharge Flutter development with:
- **Advanced Responsive Scaling**: Pixel-perfect layouts across devices
- **String Manipulation**: 14+ case conversions
- **Type Safety**: Robust data state management
- **Color Utilities**: HEX conversions & Material palette
- **Device Metrics**: Physical screen dimensions

## Installation

Add to `pubspec.yaml`:
```yaml
dependencies:
  principle_utils: ^2.0.0  # Use latest version
```

Run:
```sh
flutter pub get
```

Import:
```dart
import 'package:principle_utils/principle_utils.dart';
```

## Features

### Extensions

#### 1. Advanced Screen Responsiveness (**Enhanced**)
```dart
// Responsive scaling
double scaleFactor = context.scaleBaseHeight(); 
double maxScale = context.scaleBaseMax();

// Physical dimensions
double screenWidthCM = context.widthCM;

// Orientation detection
if (context.isLandscape) {/* Landscape UI */}
```

**Key Methods**:
| Method               | Description                          | Example Output          |
|----------------------|--------------------------------------|-------------------------|
| `widthPct(0.5)`      | 50% of screen width                 | 200 (on 400px screen)   |
| `scaleBaseWidth()`   | Width scaling ratio vs base device  | 1.2 (20% larger)        |
| `diagonalCM`         | Screen diagonal in centimeters      | 14.5 (typical phone)    |

**Base Device Specs**:
- Design Reference: iPhone 16 Pro
- Base Width: 402px
- Base Height: 874px
- Pixel Density: 38px/cm

#### 2. String Case Conversions (**New**)
```dart
'hello_world'.toCamelCase();  // helloWorld
'user id'.toTitleCase();      // User Id
'FlutterIsCool'.toSpongeCase(); // fLuTtErIsCoOl
```

**Supported Conversions**:
| Method            | Input          | Output           |
|-------------------|----------------|------------------|
| `toSnakeCase()`   | helloWorld     | hello_world      |
| `toConstantCase()`| userToken      | USER_TOKEN       |
| `toParamCase()`   | AppScreen      | app-screen       |
| `toHeaderCase()`  | pageTitle      | Page-Title       |
| `toDotCase()`     | data.json      | data.json        |
| `toSentenceCase()`| helloWorld     | Hello world      |

#### 3. Color & Duration Extensions
```dart
// Color from HEX
Color('ff3399'.toColor()); 

// Duration from number
500.ms // 500 milliseconds
```

### Sizing System

**Predefined Constants**:
```dart
EdgeInsets.all(TWSpace.sp16)  // 16px padding
TWSize.s32                    // 32px width/height
TWElevation.e8                // 8dp shadow
```

| Category       | Naming Pattern      | Example Values     |
|----------------|---------------------|--------------------|
| Spacing        | `sp` + number       | sp4, sp16, sp64   |
| Sizes          | `s` + number        | s8, s24, s48      |
| Elevation      | `e` + number        | e2, e8, e24       |

### Custom Colors

Material Design Color Palette:
```dart
CustomColors.blue500 // Primary brand color
CustomColors.gray200 // Light background
```

Available Ranges:
- Blue: 50-900
- Orange: 50-900
- Gray: 50-900
- Green: 50-900

### Type Utilities

**Data State Management**:
```dart
DataState<String, int> response = await fetchData();
if (response.isSuccess) showData(response.data!);
```

**Use Case Pattern**:
```dart
class GetProductsUseCase extends UseCase<List<Product>, int> {
  @override
  Future<List<Product>> call({int? params}) async {
    return repository.getProducts(page: params!);
  }
}
```

## Usage Examples

**Complex Responsive Layout**:
```dart
Widget build(BuildContext context) {
  return Container(
    width: context.responsive<double>(
      300,
      sm: 400,
      lg: 500,
    ),
    padding: EdgeInsets.all(context.scaleBaseWidth() * 16),
    child: Text(
      'Adaptive Content'.toHeaderCase(),
      style: TextStyle(fontSize: TWFontSize.textXl),
    ),
  );
}
```

### Platform Device Detection

Easily detect the current platform to tailor your UI:

```dart
if (PlatformDevice.isMobile) {
  print("Running on a mobile device");
}
```

**Full Example Project**:
See [example/](https://github.com/your_repo/example) directory.

## Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push branch (`git push origin feature/amazing-feature`)
5. Open Pull Request

## License

MIT License - See [LICENSE](LICENSE) for details.

**Key Improvements**:
1. Added **String Case Conversion** section with conversion table
2. Enhanced **Screen Responsiveness** with physical dimensions and scaling details
3. Added base device specifications for design reference
4. Improved example code blocks with realistic usage scenarios
5. Added comprehensive method tables for quick reference
6. Organized features into clearer categories with visual hierarchy
7. Updated version number to reflect significant new features
8. Added contribution workflow guidelines
