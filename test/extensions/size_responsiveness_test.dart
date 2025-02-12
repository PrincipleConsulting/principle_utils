import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/extensions/barrel.dart';

void main() {
  group('SizeContext Extension', () {
    testWidgets('returns correct base properties', (WidgetTester tester) async {
      // Pump a minimal widget tree with a MediaQuery.
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SizedBox(),
          ),
        ),
      );

      // Retrieve the BuildContext from the SizedBox.
      final BuildContext context = tester.element(find.byType(SizedBox));

      // Verify the base properties defined in the extension.
      expect(context.baseWidth, equals(402));
      expect(context.baseHeight, equals(874));
      expect(context.baseMin, equals(min(402, 874)));
      expect(context.baseMax, equals(max(402, 874)));
      expect(context.baseRatio, equals(402 / 874));

      final double expectedBaseDiagonal = sqrt((402 * 402) + (874 * 874));
      expect(context.baseDiagonal, closeTo(expectedBaseDiagonal, 0.001));
    });

    testWidgets('returns correct screen size values', (WidgetTester tester) async {
      // Set a known logical screen size.
      tester.view.devicePixelRatio = 1.0; // Ensure 1:1 mapping.
      tester.view.physicalSize = const Size(800, 600);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SizedBox(),
          ),
        ),
      );

      final BuildContext context = tester.element(find.byType(SizedBox));

      // Verify screen dimensions and derived properties.
      expect(context.screenSize, equals(const Size(800, 600)));
      expect(context.screenWidth, equals(800));
      expect(context.screenHeight, equals(600));
      expect(context.isLandscape, isTrue);

      final double expectedDiagonal = sqrt((800 * 800) + (600 * 600));
      expect(context.screenDiagonal, closeTo(expectedDiagonal, 0.001));
      expect(context.screenAspectRatio, closeTo(800 / 600, 0.001));
    });

    testWidgets('widthPct and heightPct return correct fractions', (WidgetTester tester) async {
      tester.view.devicePixelRatio = 1.0;
      tester.view.physicalSize = const Size(1000, 500);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SizedBox(),
          ),
        ),
      );

      final BuildContext context = tester.element(find.byType(SizedBox));

      // 50% of 1000 should be 500; 20% of 500 should be 100.
      expect(context.widthPct(0.5), equals(500));
      expect(context.heightPct(0.2), equals(100));
    });

    testWidgets('physical sizes in centimeters are calculated correctly', (WidgetTester tester) async {
      tester.view.devicePixelRatio = 1.0;
      // Set logical dimensions so that:
      // widthCM = screenWidth / 38; heightCM = screenHeight / 38.
      tester.view.physicalSize = const Size(380, 760);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SizedBox(),
          ),
        ),
      );

      final BuildContext context = tester.element(find.byType(SizedBox));

      // 380/38 should be 10, 760/38 should be 20.
      expect(context.widthCM, closeTo(10, 0.001));
      expect(context.heightCM, closeTo(20, 0.001));

      final double screenDiagonal = sqrt((380 * 380) + (760 * 760));
      expect(context.diagonalCM, closeTo(screenDiagonal / 38, 0.001));
    });

    testWidgets('scaleBaseHeight returns expected value without curve', (WidgetTester tester) async {
      tester.view.devicePixelRatio = 1.0;
      // Set the screen height to 600. (Base height is 874.)
      tester.view.physicalSize = const Size(800, 600);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SizedBox(),
          ),
        ),
      );

      final BuildContext context = tester.element(find.byType(SizedBox));

      const double expectedScale = 600 / 874;
      expect(context.scaleBaseHeight(), closeTo(expectedScale, 0.001));
    });

    testWidgets('scaleBaseWidth returns expected value without curve', (WidgetTester tester) async {
      tester.view.devicePixelRatio = 1.0;
      // Set the screen width to 800. (Base width is 402.)
      tester.view.physicalSize = const Size(800, 600);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SizedBox(),
          ),
        ),
      );

      final BuildContext context = tester.element(find.byType(SizedBox));

      const double expectedScale = 800 / 402;
      expect(context.scaleBaseWidth(), closeTo(expectedScale, 0.001));
    });

    testWidgets('scaleBaseDiagonal returns expected value without curve', (WidgetTester tester) async {
      tester.view.devicePixelRatio = 1.0;
      tester.view.physicalSize = const Size(800, 600);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SizedBox(),
          ),
        ),
      );

      final BuildContext context = tester.element(find.byType(SizedBox));

      final double screenDiagonal = sqrt((800 * 800) + (600 * 600));
      final double baseDiagonal = sqrt((402 * 402) + (874 * 874));
      final double expectedScale = screenDiagonal / baseDiagonal;
      expect(context.scaleBaseDiagonal(), closeTo(expectedScale, 0.001));
    });

    testWidgets('scaleBaseMin returns expected value without curve', (WidgetTester tester) async {
      tester.view.devicePixelRatio = 1.0;
      tester.view.physicalSize = const Size(800, 600);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SizedBox(),
          ),
        ),
      );

      final BuildContext context = tester.element(find.byType(SizedBox));

      const double scaleWidth = 800 / 402;
      const double scaleHeight = 600 / 874;
      final double expectedScale = min(scaleWidth, scaleHeight);
      expect(context.scaleBaseMin(), closeTo(expectedScale, 0.001));
    });

    testWidgets('scaleBaseMax returns expected value without curve', (WidgetTester tester) async {
      tester.view.devicePixelRatio = 1.0;
      tester.view.physicalSize = const Size(800, 600);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SizedBox(),
          ),
        ),
      );

      final BuildContext context = tester.element(find.byType(SizedBox));

      const double scaleWidth = 800 / 402;
      const double scaleHeight = 600 / 874;
      final double expectedScale = max(scaleWidth, scaleHeight);
      expect(context.scaleBaseMax(), closeTo(expectedScale, 0.001));
    });

    testWidgets('scaleBaseHeight with linear curve returns same value as without curve', (WidgetTester tester) async {
      tester.view.devicePixelRatio = 1.0;
      tester.view.physicalSize = const Size(800, 600);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SizedBox(),
          ),
        ),
      );

      final BuildContext context = tester.element(find.byType(SizedBox));

      final double withoutCurve = context.scaleBaseHeight();
      final double withCurve = context.scaleBaseHeight(curve: Curves.linear);
      expect(withCurve, closeTo(withoutCurve, 0.001));
    });

    testWidgets('scaleBaseHeight with easeIn curve returns transformed value', (WidgetTester tester) async {
      tester.view.devicePixelRatio = 1.0;
      tester.view.physicalSize = const Size(800, 600);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SizedBox(),
          ),
        ),
      );

      final BuildContext context = tester.element(find.byType(SizedBox));

      const double scale = 600 / 874;
      final double floorScale = scale.floorToDouble();
      final double fractionalPart = scale - floorScale; // same as scale % 1
      final double expected = Curves.easeIn.transform(fractionalPart) + floorScale;
      expect(context.scaleBaseHeight(curve: Curves.easeIn), closeTo(expected, 0.001));
    });

    testWidgets('scaleBaseWidth with easeOut curve returns transformed value', (WidgetTester tester) async {
      tester.view.devicePixelRatio = 1.0;
      // Set screen width to 800 (base width is 402).
      tester.view.physicalSize = const Size(800, 600);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SizedBox(),
          ),
        ),
      );
      final BuildContext context = tester.element(find.byType(SizedBox));

      const double scale = 800 / 402;
      final double floorScale = scale.floorToDouble();
      final double fractionalPart = scale - floorScale;
      final double expected = Curves.easeOut.transform(fractionalPart) + floorScale;
      expect(context.scaleBaseWidth(curve: Curves.easeOut), closeTo(expected, 0.001));
    });

    testWidgets('scaleBaseDiagonal with easeOut curve returns transformed value', (WidgetTester tester) async {
      tester.view.devicePixelRatio = 1.0;
      tester.view.physicalSize = const Size(800, 600);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SizedBox(),
          ),
        ),
      );
      final BuildContext context = tester.element(find.byType(SizedBox));

      final double screenDiagonal = sqrt((800 * 800) + (600 * 600));
      final double baseDiagonal = sqrt((402 * 402) + (874 * 874));
      final double scale = screenDiagonal / baseDiagonal;
      final double floorScale = scale.floorToDouble();
      final double fractionalPart = scale - floorScale;
      final double expected = Curves.easeOut.transform(fractionalPart) + floorScale;
      expect(context.scaleBaseDiagonal(curve: Curves.easeOut), closeTo(expected, 0.001));
    });

    testWidgets('scaleBaseMin with easeOut curve returns transformed value', (WidgetTester tester) async {
      tester.view.devicePixelRatio = 1.0;
      // Use a screen size where width and height are distinct.
      tester.view.physicalSize = const Size(800, 600);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SizedBox(),
          ),
        ),
      );
      final BuildContext context = tester.element(find.byType(SizedBox));

      const double scaleWidth = 800 / 402;
      const double scaleHeight = 600 / 874;
      final double scale = min(scaleWidth, scaleHeight);
      final double floorScale = scale.floorToDouble();
      final double fractionalPart = scale - floorScale;
      final double expected = Curves.easeOut.transform(fractionalPart) + floorScale;
      expect(context.scaleBaseMin(curve: Curves.easeOut), closeTo(expected, 0.001));
    });

    testWidgets('scaleBaseMax with easeOut curve returns transformed value', (WidgetTester tester) async {
      tester.view.devicePixelRatio = 1.0;
      // Use a screen size where width and height are distinct.
      tester.view.physicalSize = const Size(800, 600);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SizedBox(),
          ),
        ),
      );
      final BuildContext context = tester.element(find.byType(SizedBox));

      final double scaleWidth = 800 / 402;
      final double scaleHeight = 600 / 874;
      final double scale = max(scaleWidth, scaleHeight);
      final double floorScale = scale.floorToDouble();
      final double fractionalPart = scale - floorScale;
      final double expected = Curves.easeOut.transform(fractionalPart) + floorScale;
      expect(context.scaleBaseMax(curve: Curves.easeOut), closeTo(expected, 0.001));
    });
  });
}
