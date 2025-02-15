import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/principle_utils.dart';

void main() {
  group('responsive extension', () {
    testWidgets('returns default value when width is less than 640',
        (WidgetTester tester) async {
      final double dpi = tester.view.devicePixelRatio;
      tester.view.physicalSize = Size(639 * dpi, 645 * dpi);

      await tester.pumpWidget(
        const SizedBox(),
      );

      // BoilerPlate Code to get the context:
      final Finder finder = find.byType(SizedBox);
      final BuildContext context = tester.element(finder);

      // Act: call the responsive extension with several optional values.
      final int result = context.responsive<int>(
        10,
        sm: 20,
        md: 30,
        lg: 40,
        xl: 50,
      );

      // Assert: width < 640 should use the default value.
      expect(result, equals(10));
      expect(result, isA<int>());
    });

    testWidgets('returns sm value when width is between 640 and 768',
        (WidgetTester tester) async {
      final double dpi = tester.view.devicePixelRatio;
      tester.view.physicalSize = Size(645 * dpi, 645 * dpi);

      await tester.pumpWidget(
        const SizedBox(),
      );

      // BoilerPlate Code to get the context:
      final Finder finder = find.byType(SizedBox);
      final BuildContext context = tester.element(finder);

      final int result = context.responsive<int>(
        10,
        sm: 20,
        md: 30,
        lg: 40,
        xl: 50,
      );

      expect(result, equals(20));
    });

    testWidgets('returns md value when width is between 768 and 1024',
        (WidgetTester tester) async {
      final double dpi = tester.view.devicePixelRatio;
      tester.view.physicalSize = Size(800 * dpi, 600 * dpi);

      await tester.pumpWidget(
        const SizedBox(),
      );

      // BoilerPlate Code to get the context:
      final Finder finder = find.byType(SizedBox);
      final BuildContext context = tester.element(finder);

      final int result = context.responsive<int>(
        10,
        sm: 20,
        md: 30,
        lg: 40,
        xl: 50,
      );

      expect(result, equals(30));
    });

    testWidgets('returns lg value when width is between 1024 and 1280',
        (WidgetTester tester) async {
      final double dpi = tester.view.devicePixelRatio;
      tester.view.physicalSize = Size(1100 * dpi, 600 * dpi);

      await tester.pumpWidget(
        const SizedBox(),
      );

      // BoilerPlate Code to get the context:
      final Finder finder = find.byType(SizedBox);
      final BuildContext context = tester.element(finder);

      final int result = context.responsive<int>(
        10,
        sm: 20,
        md: 30,
        lg: 40,
        xl: 50,
      );

      expect(result, equals(40));
    });

    testWidgets('returns xl value when width is greater than or equal to 1280',
        (WidgetTester tester) async {
      final double dpi = tester.view.devicePixelRatio;
      tester.view.physicalSize = Size(1300 * dpi, 600 * dpi);

      await tester.pumpWidget(
        const SizedBox(),
      );

      // BoilerPlate Code to get the context:
      final Finder finder = find.byType(SizedBox);
      final BuildContext context = tester.element(finder);

      final int result = context.responsive<int>(
        10,
        sm: 20,
        md: 30,
        lg: 40,
        xl: 50,
      );

      expect(result, equals(50));
    });

    testWidgets(
        'falls back correctly when some parameters are null (for xl branch)',
        (WidgetTester tester) async {
      // For width >= 1280, but with [xl] not provided, the extension should fall back:
      // First to [lg] if present, then [md], then [sm], then default.
      final double dpi = tester.view.devicePixelRatio;
      tester.view.physicalSize = Size(1300 * dpi, 600 * dpi);

      await tester.pumpWidget(
        const SizedBox(),
      );

      // BoilerPlate Code to get the context:
      final Finder finder = find.byType(SizedBox);
      final BuildContext context = tester.element(finder);

      final int result1 = context.responsive<int>(10, sm: 20, md: 30, lg: 40);
      expect(result1, equals(40));

      final int result2 = context.responsive<int>(10, sm: 20, md: 30);
      expect(result2, equals(30));

      final int result3 = context.responsive<int>(10, sm: 20);
      expect(result3, equals(20));

      final int result4 = context.responsive<int>(10);
      expect(result4, equals(10));
    });

    testWidgets(
        'falls back correctly for lg branch when width is between 1024 and 1280',
        (WidgetTester tester) async {
      // For width between 1024 and 1280, but [lg] is null, the extension should fall back to [md] then [sm].
      final double dpi = tester.view.devicePixelRatio;
      tester.view.physicalSize = Size(1300 * dpi, 600 * dpi);

      await tester.pumpWidget(
        const SizedBox(),
      );

      // BoilerPlate Code to get the context:
      final Finder finder = find.byType(SizedBox);
      final BuildContext context = tester.element(finder);

      final int result1 = context.responsive<int>(10, sm: 20, md: 30);
      expect(result1, equals(30));

      final int result2 = context.responsive<int>(10, sm: 20);
      expect(result2, equals(20));

      final int result3 = context.responsive<int>(10);
      expect(result3, equals(10));
    });

    testWidgets(
        'falls back correctly for md branch when width is between 768 and 1024',
        (WidgetTester tester) async {
      // For width between 768 and 1024, but [md] is null, it should fall back to [sm] then default.
      final double dpi = tester.view.devicePixelRatio;
      tester.view.physicalSize = Size(800 * dpi, 600 * dpi);

      await tester.pumpWidget(
        const SizedBox(),
      );

      // BoilerPlate Code to get the context:
      final Finder finder = find.byType(SizedBox);
      final BuildContext context = tester.element(finder);

      final int result1 = context.responsive<int>(10, sm: 20);
      expect(result1, equals(20));

      final int result2 = context.responsive<int>(10);
      expect(result2, equals(10));
    });
  });
}
