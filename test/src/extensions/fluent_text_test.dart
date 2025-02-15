import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:principle_utils/principle_utils.dart';

void main() {
  group('FluentTextExtension', () {
    test('italic returns style with FontStyle.italic', () {
      const TextStyle style = TextStyle();
      final TextStyle italicStyle = style.italic;
      expect(italicStyle.fontStyle, equals(FontStyle.italic));
    });

    test('underline returns style with TextDecoration.underline', () {
      const TextStyle style = TextStyle();
      final TextStyle underlineStyle = style.underline;
      expect(underlineStyle.decoration, equals(TextDecoration.underline));
    });

    test('lineThrough returns style with TextDecoration.lineThrough', () {
      const TextStyle style = TextStyle();
      final TextStyle lineThroughStyle = style.lineThrough;
      expect(lineThroughStyle.decoration, equals(TextDecoration.lineThrough));
    });

    test('overline returns style with TextDecoration.overline', () {
      const TextStyle style = TextStyle();
      final TextStyle overlineStyle = style.overline;
      expect(overlineStyle.decoration, equals(TextDecoration.overline));
    });

    test('textColor sets color correctly', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle = style.textColor(Colors.blue);
      expect(newStyle.color, equals(Colors.blue));
    });

    test('textBackgroundColor sets backgroundColor correctly', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle = style.textBackgroundColor(Colors.yellow);
      expect(newStyle.backgroundColor, equals(Colors.yellow));
    });

    test('size sets fontSize correctly', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle = style.size(20);
      expect(newStyle.fontSize, equals(20));
    });

    test('scale multiplies fontSize correctly when fontSize is provided', () {
      const TextStyle style = TextStyle(fontSize: 10);
      final TextStyle newStyle = style.scale(2);
      expect(newStyle.fontSize, equals(20));
    });

    test('scale uses default base (16) when fontSize is null', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle = style.scale(1.5);
      expect(newStyle.fontSize, equals(16 * 1.5));
    });

    test('style sets fontStyle correctly', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle = style.style(FontStyle.italic);
      expect(newStyle.fontStyle, equals(FontStyle.italic));
    });

    test('letterSpace sets letterSpacing correctly', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle = style.letterSpace(1.5);
      expect(newStyle.letterSpacing, equals(1.5));
    });

    test('wordSpace sets wordSpacing correctly', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle = style.wordSpace(2.0);
      expect(newStyle.wordSpacing, equals(2.0));
    });

    test('baseline sets textBaseline correctly', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle = style.baseline(TextBaseline.alphabetic);
      expect(newStyle.textBaseline, equals(TextBaseline.alphabetic));
    });

    test('textHeight sets height correctly', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle = style.textHeight(1.5);
      expect(newStyle.height, equals(1.5));
    });

    test('textDecoration configures decoration parameters correctly', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle = style.textDecoration(
        TextDecoration.underline,
        color: Colors.red,
        style: TextDecorationStyle.dashed,
        thickness: 2.0,
      );
      expect(newStyle.decoration, equals(TextDecoration.underline));
      expect(newStyle.decorationColor, equals(Colors.red));
      expect(newStyle.decorationStyle, equals(TextDecorationStyle.dashed));
      expect(newStyle.decorationThickness, equals(2.0));
    });

    test('textLocale sets locale correctly', () {
      const TextStyle style = TextStyle();
      const Locale locale = Locale('en', 'US');
      final TextStyle newStyle = style.textLocale(locale);
      expect(newStyle.locale, equals(locale));
    });

    test('textForeground sets foreground paint correctly', () {
      const TextStyle style = TextStyle();
      final Paint paint = Paint()..color = Colors.green;
      final TextStyle newStyle = style.textForeground(paint);
      expect(newStyle.foreground, equals(paint));
    });

    test('textBackground sets background paint correctly', () {
      const TextStyle style = TextStyle();
      final Paint paint = Paint()..color = Colors.orange;
      final TextStyle newStyle = style.textBackground(paint);
      expect(newStyle.background, equals(paint));
    });

    test('textShadows sets shadows correctly', () {
      const TextStyle style = TextStyle();
      final List<Shadow> shadows = <Shadow>[
        const Shadow(blurRadius: 2, offset: Offset(1, 1)),
      ];
      final TextStyle newStyle = style.textShadows(shadows);
      expect(newStyle.shadows, equals(shadows));
    });

    test('textFeatures sets fontFeatures correctly', () {
      const TextStyle style = TextStyle();
      final List<FontFeature> features = <FontFeature>[
        const FontFeature.tabularFigures()
      ];
      final TextStyle newStyle = style.textFeatures(features);
      expect(newStyle.fontFeatures, equals(features));
    });

    test('overflow sets text overflow correctly', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle = style.textOverflow(TextOverflow.ellipsis);
      expect(newStyle.overflow, equals(TextOverflow.ellipsis));
    });

    test('leadingDistribution sets leading distribution correctly', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle =
          style.textLeadingDist(TextLeadingDistribution.even);
      expect(
          newStyle.leadingDistribution, equals(TextLeadingDistribution.even));
    });

    test('textFontFamily sets fontFamily correctly', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle = style.textFontFamily('Roboto');
      expect(newStyle.fontFamily, equals('Roboto'));
    });

    test('fontFamilyFallback sets fontFamilyFallback correctly', () {
      const TextStyle style = TextStyle();
      final List<String> fallback = <String>['Arial', 'Helvetica'];
      final TextStyle newStyle = style.textFontFamilyFallback(fallback);
      expect(newStyle.fontFamilyFallback, equals(fallback));
    });

    test('fontVariations sets fontVariations correctly', () {
      const TextStyle style = TextStyle();
      final List<FontVariation> variations = <FontVariation>[
        const FontVariation('wght', 400)
      ];
      final TextStyle newStyle = style.textFontVariations(variations);
      expect(newStyle.fontVariations, equals(variations));
    });

    test('inherit sets inherit flag correctly', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle = style.textInherit(false);
      expect(newStyle.inherit, isFalse);
    });

    test('decorationColor sets decoration color correctly', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle = style.textDecorationColor(Colors.purple);
      expect(newStyle.decorationColor, equals(Colors.purple));
    });

    test('decorationStyle sets decoration style correctly', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle =
          style.textDecorationStyle(TextDecorationStyle.wavy);
      expect(newStyle.decorationStyle, equals(TextDecorationStyle.wavy));
    });

    test('decorationThickness sets decoration thickness correctly', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle = style.textDecorationThickness(3.0);
      expect(newStyle.decorationThickness, equals(3.0));
    });

    test('chain multiple fluent extensions', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle = style.bold.italic
          .size(20)
          .textColor(Colors.blue)
          .underline
          .letterSpace(1.0)
          .wordSpace(2.0)
          .textHeight(1.5)
          .textFontFamily('Roboto');

      expect(newStyle.fontWeight, equals(FontWeight.w700));
      expect(newStyle.fontStyle, equals(FontStyle.italic));
      expect(newStyle.fontSize, equals(20));
      expect(newStyle.color, equals(Colors.blue));
      expect(newStyle.decoration, equals(TextDecoration.underline));
      expect(newStyle.letterSpacing, equals(1.0));
      expect(newStyle.wordSpacing, equals(2.0));
      expect(newStyle.height, equals(1.5));
      expect(newStyle.fontFamily, equals('Roboto'));
    });
  });

  group('Font Weight Shortcuts', () {
    test('weight sets fontWeight correctly', () {
      const TextStyle style = TextStyle();
      final TextStyle newStyle = style.weight(FontWeight.w900);
      expect(newStyle.fontWeight, equals(FontWeight.w900));
    });

    test('thin returns style with FontWeight.w100', () {
      const TextStyle style = TextStyle();
      final TextStyle thinStyle = style.thin;
      expect(thinStyle.fontWeight, equals(FontWeight.w100));
    });

    test('extraLight returns style with FontWeight.w200', () {
      const TextStyle style = TextStyle();
      final TextStyle extraLightStyle = style.extraLight;
      expect(extraLightStyle.fontWeight, equals(FontWeight.w200));
    });

    test('light returns style with FontWeight.w300', () {
      const TextStyle style = TextStyle();
      final TextStyle lightStyle = style.light;
      expect(lightStyle.fontWeight, equals(FontWeight.w300));
    });

    test('regular returns style with FontWeight.w400', () {
      const TextStyle style = TextStyle();
      final TextStyle regularStyle = style.regular;
      expect(regularStyle.fontWeight, equals(FontWeight.w400));
    });

    test('medium returns style with FontWeight.w500', () {
      const TextStyle style = TextStyle();
      final TextStyle mediumStyle = style.medium;
      expect(mediumStyle.fontWeight, equals(FontWeight.w500));
    });

    test('semiBold returns style with FontWeight.w600', () {
      const TextStyle style = TextStyle();
      final TextStyle semiBoldStyle = style.semiBold;
      expect(semiBoldStyle.fontWeight, equals(FontWeight.w600));
    });

    test('bold returns style with FontWeight.w700', () {
      const TextStyle style = TextStyle();
      final TextStyle boldStyle = style.bold;
      expect(boldStyle.fontWeight, equals(FontWeight.w700));
    });

    test('extraBold returns style with FontWeight.w800', () {
      const TextStyle style = TextStyle();
      final TextStyle extraBoldStyle = style.extraBold;
      expect(extraBoldStyle.fontWeight, equals(FontWeight.w800));
    });

    test('black returns style with FontWeight.w900', () {
      const TextStyle style = TextStyle();
      final TextStyle blackStyle = style.black;
      expect(blackStyle.fontWeight, equals(FontWeight.w900));
    });
  });
}
