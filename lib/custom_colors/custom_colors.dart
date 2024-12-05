import 'package:flutter/material.dart';

/// A comprehensive color palette library for Flutter applications.
///
/// ## Overview
/// `CustomColors` is an abstract class that provides an extensive collection of predefined color constants
/// designed to offer developers a consistent and visually appealing color system across various UI components.
///
/// ## Color Groups
/// The library includes the following color categories:
/// - Neutral Tones: slate, gray, zinc, neutral, stone
/// - Warm Accent Colors: red, orange, amber, yellow
/// - Green Variants: green, emerald, teal
/// - Blue Spectrum: blue, cyan, sky, indigo
/// - Purple and Pink Shades: violet, purple, fuchsia
///
/// ## Shade System
/// Each color group features 11 distinct shades:
/// - 50: Very light color (almost white)
/// - 100-400: Progressively darker light colors
/// - 500: Standard, base color
/// - 600-900: Progressively darker colors
/// - 950: Extremely dark color (almost black)
///
/// ## Usage Examples
/// ```dart
/// // Using a specific color shade
/// Container(
///   color: CustomColors.blue500,
///   child: Text('Blue Container'),
/// )
///
/// // Applying different shades
/// Text(
///   'Heading',
///   style: TextStyle(color: CustomColors.slate700),
/// )
/// ```
abstract final class CustomColors {
  // Slate colors - typically a cool, muted tone of gray-blue
  /// Very light slate color (50 shade)
  static const Color slate50 = Color(0xFFF8FAFC);

  /// Light slate color (100 shade)
  static const Color slate100 = Color(0xFFF1F5F9);

  /// Lighter medium slate color (200 shade)
  static const Color slate200 = Color(0xFFE2E8F0);

  /// Light gray-blue slate color (300 shade)
  static const Color slate300 = Color(0xFFCBD5E1);

  /// Muted medium slate color (400 shade)
  static const Color slate400 = Color(0xFF94A3B8);

  /// Standard slate color (500 shade)
  static const Color slate500 = Color(0xFF64748B);

  /// Slightly darker slate color (600 shade)
  static const Color slate600 = Color(0xFF475569);

  /// Darker slate color (700 shade)
  static const Color slate700 = Color(0xFF334155);

  /// Deep slate color (800 shade)
  static const Color slate800 = Color(0xFF1E293B);

  /// Very dark slate color (900 shade)
  static const Color slate900 = Color(0xFF0F172A);

  /// Almost black slate color (950 shade)
  static const Color slate950 = Color(0xFF020617);

  // Gray colors - Neutral tones of gray, suitable for backgrounds or text
  /// Very light gray color (50 shade)
  static const Color gray50 = Color(0xFFF9FAFB);

  /// Light gray color (100 shade)
  static const Color gray100 = Color(0xFFF3F4F6);

  /// Soft medium gray color (200 shade)
  static const Color gray200 = Color(0xFFE5E7EB);

  /// Light medium gray color (300 shade)
  static const Color gray300 = Color(0xFFD1D5DB);

  /// Muted gray color (400 shade)
  static const Color gray400 = Color(0xFF9CA3AF);

  /// Standard gray color (500 shade)
  static const Color gray500 = Color(0xFF6B7280);

  /// Slightly darker gray color (600 shade)
  static const Color gray600 = Color(0xFF4B5563);

  /// Darker gray color (700 shade)
  static const Color gray700 = Color(0xFF374151);

  /// Very dark gray color (800 shade)
  static const Color gray800 = Color(0xFF1F2937);

  /// Almost black gray color (900 shade)
  static const Color gray900 = Color(0xFF111827);

  /// Extremely dark gray color (950 shade)
  static const Color gray950 = Color(0xFF030712);

  /// Zinc colors - A range of gray shades with a slightly cooler tone.

  /// Very light zinc color (50 shade)
  static const Color zinc50 = Color(0xFFFAFAFA);

  /// Light zinc color (100 shade)
  static const Color zinc100 = Color(0xFFF4F4F5);

  /// Medium-light zinc color (200 shade)
  static const Color zinc200 = Color(0xFFE4E4E7);

  /// Soft medium zinc color (300 shade)
  static const Color zinc300 = Color(0xFFD4D4D8);

  /// Muted zinc color (400 shade)
  static const Color zinc400 = Color(0xFFA1A1AA);

  /// Balanced zinc color (500 shade)
  static const Color zinc500 = Color(0xFF71717A);

  /// Darker zinc color (600 shade)
  static const Color zinc600 = Color(0xFF52525B);

  /// Deeper zinc color (700 shade)
  static const Color zinc700 = Color(0xFF3F3F46);

  /// Very dark zinc color (800 shade)
  static const Color zinc800 = Color(0xFF27272A);

  /// Almost-black zinc color (900 shade)
  static const Color zinc900 = Color(0xFF18181B);

  /// The darkest zinc color (950 shade)
  static const Color zinc950 = Color(0xFF09090B);

  /// Neutral colors - A versatile range of neutral tones for general use.

  /// Very light neutral color (50 shade)
  static const Color neutral50 = Color(0xFFFAFAFA);

  /// Light neutral color (100 shade)
  static const Color neutral100 = Color(0xFFF5F5F5);

  /// Medium-light neutral color (200 shade)
  static const Color neutral200 = Color(0xFFE5E5E5);

  /// Soft medium neutral color (300 shade)
  static const Color neutral300 = Color(0xFFD4D4D4);

  /// Muted neutral color (400 shade)
  static const Color neutral400 = Color(0xFFA3A3A3);

  /// Balanced neutral color (500 shade)
  static const Color neutral500 = Color(0xFF737373);

  /// Darker neutral color (600 shade)
  static const Color neutral600 = Color(0xFF525252);

  /// Deeper neutral color (700 shade)
  static const Color neutral700 = Color(0xFF404040);

  /// Very dark neutral color (800 shade)
  static const Color neutral800 = Color(0xFF262626);

  /// Almost-black neutral color (900 shade)
  static const Color neutral900 = Color(0xFF171717);

  /// The darkest neutral color (950 shade)
  static const Color neutral950 = Color(0xFF0A0A0A);

  /// Stone colors - Earthy gray shades with warm undertones.

  /// Very light stone color (50 shade)
  static const Color stone50 = Color(0xFFFAFAF9);

  /// Light stone color (100 shade)
  static const Color stone100 = Color(0xFFF5F5F4);

  /// Medium-light stone color (200 shade)
  static const Color stone200 = Color(0xFFE7E5E4);

  /// Soft medium stone color (300 shade)
  static const Color stone300 = Color(0xFFD6D3D1);

  /// Muted stone color (400 shade)
  static const Color stone400 = Color(0xFFA8A29E);

  /// Balanced stone color (500 shade)
  static const Color stone500 = Color(0xFF78716C);

  /// Darker stone color (600 shade)
  static const Color stone600 = Color(0xFF57534E);

  /// Deeper stone color (700 shade)
  static const Color stone700 = Color(0xFF44403C);

  /// Very dark stone color (800 shade)
  static const Color stone800 = Color(0xFF292524);

  /// Almost-black stone color (900 shade)
  static const Color stone900 = Color(0xFF1C1917);

  /// The darkest stone color (950 shade)
  static const Color stone950 = Color(0xFF0C0A09);

  /// Red colors - A range of red tones, from light to dark.

  /// Very light red color (50 shade)
  static const Color red50 = Color(0xFFFEF2F2);

  /// Light red color (100 shade)
  static const Color red100 = Color(0xFFFEE2E2);

  /// Light medium red color (200 shade)
  static const Color red200 = Color(0xFFFECECE);

  /// Medium red color (300 shade)
  static const Color red300 = Color(0xFFFCACAC);

  /// Muted red color (400 shade)
  static const Color red400 = Color(0xFFF87171);

  /// Standard red color (500 shade)
  static const Color red500 = Color(0xFFEF4444);

  /// Slightly darker red color (600 shade)
  static const Color red600 = Color(0xFFDC2626);

  /// Darker red color (700 shade)
  static const Color red700 = Color(0xFFB91C1C);

  /// Very dark red color (800 shade)
  static const Color red800 = Color(0xFF991B1B);

  /// Almost black red color (900 shade)
  static const Color red900 = Color(0xFF7F1D1D);

  /// Extremely dark red color (950 shade)
  static const Color red950 = Color(0xFF450A0A);

  /// Orange colors - A range of warm orange tones.

  /// Very light orange color (50 shade)
  static const Color orange50 = Color(0xFFFFF7ED);

  /// Light orange color (100 shade)
  static const Color orange100 = Color(0xFFFFEDD5);

  /// Light medium orange color (200 shade)
  static const Color orange200 = Color(0xFFFED7AA);

  /// Medium orange color (300 shade)
  static const Color orange300 = Color(0xFFFDBA74);

  /// Muted orange color (400 shade)
  static const Color orange400 = Color(0xFFFB923C);

  /// Standard orange color (500 shade)
  static const Color orange500 = Color(0xFFF97316);

  /// Slightly darker orange color (600 shade)
  static const Color orange600 = Color(0xFFEA580C);

  /// Darker orange color (700 shade)
  static const Color orange700 = Color(0xFFC2410C);

  /// Very dark orange color (800 shade)
  static const Color orange800 = Color(0xFF9A3412);

  /// Almost black orange color (900 shade)
  static const Color orange900 = Color(0xFF7C2D12);

  /// Extremely dark orange color (950 shade)
  static const Color orange950 = Color(0xFF431407);

  /// Amber colors - A range of golden to amber tones.

  /// Very light amber color (50 shade)
  static const Color amber50 = Color(0xFFFFFBEB);

  /// Light amber color (100 shade)
  static const Color amber100 = Color(0xFFFEF3C7);

  /// Light medium amber color (200 shade)
  static const Color amber200 = Color(0xFFFDE68A);

  /// Medium amber color (300 shade)
  static const Color amber300 = Color(0xFFFCD34D);

  /// Muted amber color (400 shade)
  static const Color amber400 = Color(0xFFFBDF24);

  /// Standard amber color (500 shade)
  static const Color amber500 = Color(0xFFF59E0B);

  /// Slightly darker amber color (600 shade)
  static const Color amber600 = Color(0xFFD97706);

  /// Darker amber color (700 shade)
  static const Color amber700 = Color(0xFFB45309);

  /// Very dark amber color (800 shade)
  static const Color amber800 = Color(0xFF92400E);

  /// Almost black amber color (900 shade)
  static const Color amber900 = Color(0xFF78350F);

  /// Extremely dark amber color (950 shade)
  static const Color amber950 = Color(0xFF4A2C1C);

  /// Yellow colors - A range of bright yellow tones.

  /// Very light yellow color (50 shade)
  static const Color yellow50 = Color(0xFFFFFBEA);

  /// Light yellow color (100 shade)
  static const Color yellow100 = Color(0xFFFFF3C4);

  /// Light medium yellow color (200 shade)
  static const Color yellow200 = Color(0xFFFEEC89);

  /// Medium yellow color (300 shade)
  static const Color yellow300 = Color(0xFFFED74D);

  /// Muted yellow color (400 shade)
  static const Color yellow400 = Color(0xFFFEC20E);

  /// Standard yellow color (500 shade)
  static const Color yellow500 = Color(0xFFFABF04);

  /// Slightly darker yellow color (600 shade)
  static const Color yellow600 = Color(0xFFF59E0B);

  /// Darker yellow color (700 shade)
  static const Color yellow700 = Color(0xFFD97706);

  /// Very dark yellow color (800 shade)
  static const Color yellow800 = Color(0xFFB45309);

  /// Almost black yellow color (900 shade)
  static const Color yellow900 = Color(0xFF92400E);

  /// Extremely dark yellow color (950 shade)
  static const Color yellow950 = Color(0xFF78350F);

  /// Green colors - A range of green tones.

  /// Very light green color (50 shade)
  static const Color green50 = Color(0xFFECFDF5);

  /// Light green color (100 shade)
  static const Color green100 = Color(0xFFD1FADF);

  /// Light medium green color (200 shade)
  static const Color green200 = Color(0xFFAAF1D8);

  /// Medium green color (300 shade)
  static const Color green300 = Color(0xFF6EE7B7);

  /// Muted green color (400 shade)
  static const Color green400 = Color(0xFF34D399);

  /// Standard green color (500 shade)
  static const Color green500 = Color(0xFF10B981);

  /// Slightly darker green color (600 shade)
  static const Color green600 = Color(0xFF059669);

  /// Darker green color (700 shade)
  static const Color green700 = Color(0xFF047857);

  /// Very dark green color (800 shade)
  static const Color green800 = Color(0xFF065F46);

  /// Almost black green color (900 shade)
  static const Color green900 = Color(0xFF064E3B);

  /// Extremely dark green color (950 shade)
  static const Color green950 = Color(0xFF022C22);

  /// Emerald colors - A rich green color range.

  /// Very light emerald color (50 shade)
  static const Color emerald50 = Color(0xFFECFDF3);

  /// Light emerald color (100 shade)
  static const Color emerald100 = Color(0xFFD1FAE5);

  /// Light medium emerald color (200 shade)
  static const Color emerald200 = Color(0xFFA7F3D0);

  /// Medium emerald color (300 shade)
  static const Color emerald300 = Color(0xFF6EE7B7);

  /// Muted emerald color (400 shade)
  static const Color emerald400 = Color(0xFF34D399);

  /// Standard emerald color (500 shade)
  static const Color emerald500 = Color(0xFF10B981);

  /// Slightly darker emerald color (600 shade)
  static const Color emerald600 = Color(0xFF059669);

  /// Darker emerald color (700 shade)
  static const Color emerald700 = Color(0xFF047857);

  /// Very dark emerald color (800 shade)
  static const Color emerald800 = Color(0xFF065F46);

  /// Almost black emerald color (900 shade)
  static const Color emerald900 = Color(0xFF064E3B);

  /// Extremely dark emerald color (950 shade)
  static const Color emerald950 = Color(0xFF022C22);

  /// Teal colors - A blue-green range of shades.

  /// Very light teal color (50 shade)
  static const Color teal50 = Color(0xFF0AFAFA);

  /// Light teal color (100 shade)
  static const Color teal100 = Color(0xFF5FF6F6);

  /// Light medium teal color (200 shade)
  static const Color teal200 = Color(0xFF4BCBDB);

  /// Medium teal color (300 shade)
  static const Color teal300 = Color(0xFF3B9A9A);

  /// Muted teal color (400 shade)
  static const Color teal400 = Color(0xFF2A6F6F);

  /// Standard teal color (500 shade)
  static const Color teal500 = Color(0xFF1A4444);

  /// Slightly darker teal color (600 shade)
  static const Color teal600 = Color(0xFF0F3232);

  /// Darker teal color (700 shade)
  static const Color teal700 = Color(0xFF072121);

  /// Very dark teal color (800 shade)
  static const Color teal800 = Color(0xFF041818);

  /// Almost black teal color (900 shade)
  static const Color teal900 = Color(0xFF021616);

  /// Extremely dark teal color (950 shade)
  static const Color teal950 = Color(0xFF010B0B);

  /// Blue colors - A range of blue tones.

  /// Very light blue color (50 shade)
  static const Color blue50 = Color(0xFFE3F2FD);

  /// Light blue color (100 shade)
  static const Color blue100 = Color(0xFFBBDEFB);

  /// Light medium blue color (200 shade)
  static const Color blue200 = Color(0xFF90CAF9);

  /// Medium blue color (300 shade)
  static const Color blue300 = Color(0xFF64B5F6);

  /// Muted blue color (400 shade)
  static const Color blue400 = Color(0xFF42A5F5);

  /// Standard blue color (500 shade)
  static const Color blue500 = Color(0xFF2196F3);

  /// Slightly darker blue color (600 shade)
  static const Color blue600 = Color(0xFF1E88E5);

  /// Darker blue color (700 shade)
  static const Color blue700 = Color(0xFF1976D2);

  /// Very dark blue color (800 shade)
  static const Color blue800 = Color(0xFF1565C0);

  /// Almost black blue color (900 shade)
  static const Color blue900 = Color(0xFF0D47A1);

  /// Extremely dark blue color (950 shade)
  static const Color blue950 = Color(0xFF003C8D);

  /// Cyan colors - A range of light to deep cyan tones.

  /// Very light cyan color (50 shade)
  static const Color cyan50 = Color(0xFFE0F7FA);

  /// Light cyan color (100 shade)
  static const Color cyan100 = Color(0xFFB2EBF2);

  /// Light medium cyan color (200 shade)
  static const Color cyan200 = Color(0xFF80DEEA);

  /// Medium cyan color (300 shade)
  static const Color cyan300 = Color(0xFF4DD0E1);

  /// Muted cyan color (400 shade)
  static const Color cyan400 = Color(0xFF26C6DA);

  /// Standard cyan color (500 shade)
  static const Color cyan500 = Color(0xFF00BCD4);

  /// Slightly darker cyan color (600 shade)
  static const Color cyan600 = Color(0xFF00ACC1);

  /// Darker cyan color (700 shade)
  static const Color cyan700 = Color(0xFF0097A7);

  /// Very dark cyan color (800 shade)
  static const Color cyan800 = Color(0xFF00838F);

  /// Almost black cyan color (900 shade)
  static const Color cyan900 = Color(0xFF006064);

  /// Extremely dark cyan color (950 shade)
  static const Color cyan950 = Color(0xFF004C4C);

  /// Sky colors - A range of soft to deep sky blues.

  /// Very light sky blue color (50 shade)
  static const Color sky50 = Color(0xFFEBF8FF);

  /// Light sky blue color (100 shade)
  static const Color sky100 = Color(0xFFBEE3F8);

  /// Light medium sky blue color (200 shade)
  static const Color sky200 = Color(0xFF7CC3E4);

  /// Medium sky blue color (300 shade)
  static const Color sky300 = Color(0xFF38BDF8);

  /// Muted sky blue color (400 shade)
  static const Color sky400 = Color(0xFF0EA5E9);

  /// Standard sky blue color (500 shade)
  static const Color sky500 = Color(0xFF0284C7);

  /// Slightly darker sky blue color (600 shade)
  static const Color sky600 = Color(0xFF0369A1);

  /// Darker sky blue color (700 shade)
  static const Color sky700 = Color(0xFF075985);

  /// Very dark sky blue color (800 shade)
  static const Color sky800 = Color(0xFF0C4A6E);

  /// Almost black sky blue color (900 shade)
  static const Color sky900 = Color(0xFF1E3A8A);

  /// Extremely dark sky blue color (950 shade)
  static const Color sky950 = Color(0xFF172F3D);

  /// Indigo colors - A range of rich indigo shades.

  /// Very light indigo color (50 shade)
  static const Color indigo50 = Color(0xFFE0E7FF);

  /// Light indigo color (100 shade)
  static const Color indigo100 = Color(0xFFC7D2FE);

  /// Light medium indigo color (200 shade)
  static const Color indigo200 = Color(0xFFA5B4FC);

  /// Medium indigo color (300 shade)
  static const Color indigo300 = Color(0xFF818CF8);

  /// Muted indigo color (400 shade)
  static const Color indigo400 = Color(0xFF6366F1);

  /// Standard indigo color (500 shade)
  static const Color indigo500 = Color(0xFF4F46E5);

  /// Slightly darker indigo color (600 shade)
  static const Color indigo600 = Color(0xFF4338CA);

  /// Darker indigo color (700 shade)
  static const Color indigo700 = Color(0xFF3730A3);

  /// Very dark indigo color (800 shade)
  static const Color indigo800 = Color(0xFF312E81);

  /// Almost black indigo color (900 shade)
  static const Color indigo900 = Color(0xFF1E1B6A);

  /// Extremely dark indigo color (950 shade)
  static const Color indigo950 = Color(0xFF0C0B43);

  /// Violet colors - A range of vibrant violet hues.

  /// Very light violet color (50 shade)
  static const Color violet50 = Color(0xFFE9D5FF);

  /// Light violet color (100 shade)
  static const Color violet100 = Color(0xFFD8B4FE);

  /// Light medium violet color (200 shade)
  static const Color violet200 = Color(0xFF8B5CF6);

  /// Medium violet color (300 shade)
  static const Color violet300 = Color(0xFF6D28D9);

  /// Muted violet color (400 shade)
  static const Color violet400 = Color(0xFF5B21B6);

  /// Standard violet color (500 shade)
  static const Color violet500 = Color(0xFF4C1D95);

  /// Slightly darker violet color (600 shade)
  static const Color violet600 = Color(0xFF3B0F7D);

  /// Darker violet color (700 shade)
  static const Color violet700 = Color(0xFF2E0063);

  /// Very dark violet color (800 shade)
  static const Color violet800 = Color(0xFF190A44);

  /// Almost black violet color (900 shade)
  static const Color violet900 = Color(0xFF110A30);

  /// Extremely dark violet color (950 shade)
  static const Color violet950 = Color(0xFF0C0A2C);

  /// Purple colors - A range of deep purple shades.

  /// Very light purple color (50 shade)
  static const Color purple50 = Color(0xFFE9D5FF);

  /// Light purple color (100 shade)
  static const Color purple100 = Color(0xFFD8B4FE);

  /// Light medium purple color (200 shade)
  static const Color purple200 = Color(0xFF8B5CF6);

  /// Medium purple color (300 shade)
  static const Color purple300 = Color(0xFF6D28D9);

  /// Muted purple color (400 shade)
  static const Color purple400 = Color(0xFF5B21B6);

  /// Standard purple color (500 shade)
  static const Color purple500 = Color(0xFF4C1D95);

  /// Slightly darker purple color (600 shade)
  static const Color purple600 = Color(0xFF3B0F7D);

  /// Darker purple color (700 shade)
  static const Color purple700 = Color(0xFF2E0063);

  /// Very dark purple color (800 shade)
  static const Color purple800 = Color(0xFF190A44);

  /// Almost black purple color (900 shade)
  static const Color purple900 = Color(0xFF110A30);

  /// Extremely dark purple color (950 shade)
  static const Color purple950 = Color(0xFF0C0A2C);

  /// Fuchsia colors - A range of bright, deep pinkish purples.

  /// Very light fuchsia color (50 shade)
  static const Color fuchsia50 = Color(0xFFF5F3FF);

  /// Light fuchsia color (100 shade)
  static const Color fuchsia100 = Color(0xFFF1D8FF);

  /// Light medium fuchsia color (200 shade)
  static const Color fuchsia200 = Color(0xFFE11D48);

  /// Medium fuchsia color (300 shade)
  static const Color fuchsia300 = Color(0xFF9A30A6);

  /// Muted fuchsia color (400 shade)
  static const Color fuchsia400 = Color(0xFF7F56A1);

  /// Standard fuchsia color (500 shade)
  static const Color fuchsia500 = Color(0xFF9C1A86);

  /// Slightly darker fuchsia color (600 shade)
  static const Color fuchsia600 = Color(0xFFB91C2A);

  /// Darker fuchsia color (700 shade)
  static const Color fuchsia700 = Color(0xFFF99C12);

  /// Very dark fuchsia color (800 shade)
  static const Color fuchsia800 = Color(0xFFEAA437);

  /// Almost black fuchsia color (900 shade)
  static const Color fuchsia900 = Color(0xFF1E222B);

  /// Extremely dark fuchsia color (950 shade)
  static const Color fuchsia950 = Color(0xFF1E222B);
}
