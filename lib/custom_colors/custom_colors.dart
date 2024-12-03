import 'package:flutter/material.dart';

abstract class CustomColors {
  // Slate colors - typically a cool, muted tone of gray-blue
  static const Color slate50 = Color(0xFFF8FAFC); // Very light slate color
  static const Color slate100 = Color(0xFFF1F5F9); // Light slate color
  static const Color slate200 = Color(0xFFE2E8F0); // Lighter medium slate color
  static const Color slate300 = Color(0xFFCBD5E1); // Light gray-blue slate color
  static const Color slate400 = Color(0xFF94A3B8); // Muted medium slate color
  static const Color slate500 = Color(0xFF64748B); // Standard slate color
  static const Color slate600 = Color(0xFF475569); // Slightly darker slate color
  static const Color slate700 = Color(0xFF334155); // Darker slate color
  static const Color slate800 = Color(0xFF1E293B); // Deep slate color
  static const Color slate900 = Color(0xFF0F172A); // Very dark slate color
  static const Color slate950 = Color(0xFF020617); // Almost black slate color

  // Gray colors - Neutral tones of gray, suitable for backgrounds or text
  static const Color gray50 = Color(0xFFF9FAFB); // Very light gray
  static const Color gray100 = Color(0xFFF3F4F6); // Light gray
  static const Color gray200 = Color(0xFFE5E7EB); // Soft medium gray
  static const Color gray300 = Color(0xFFD1D5DB); // Light medium gray
  static const Color gray400 = Color(0xFF9CA3AF); // Muted gray
  static const Color gray500 = Color(0xFF6B7280); // Standard gray
  static const Color gray600 = Color(0xFF4B5563); // Slightly darker gray
  static const Color gray700 = Color(0xFF374151); // Darker gray
  static const Color gray800 = Color(0xFF1F2937); // Very dark gray
  static const Color gray900 = Color(0xFF111827); // Almost black gray
  static const Color gray950 = Color(0xFF030712); // Extremely dark gray

  // Zinc colors - A range of grays with a slightly cooler tone
  static const Color zinc50 = Color(0xFFFAFAFA); // Very light zinc color
  static const Color zinc100 = Color(0xFFF4F4F5); // Light zinc color
  static const Color zinc200 = Color(0xFFE4E4E7); // Light medium zinc color
  static const Color zinc300 = Color(0xFFD4D4D8); // Soft medium zinc color
  static const Color zinc400 = Color(0xFFA1A1AA); // Muted zinc color
  static const Color zinc500 = Color(0xFF71717A); // Standard zinc color
  static const Color zinc600 = Color(0xFF52525B); // Slightly darker zinc color
  static const Color zinc700 = Color(0xFF3F3F46); // Darker zinc color
  static const Color zinc800 = Color(0xFF27272A); // Very dark zinc color
  static const Color zinc900 = Color(0xFF18181B); // Almost black zinc color
  static const Color zinc950 = Color(0xFF09090B); // Extremely dark zinc color

  // Neutral colors - A range of light to dark neutral tones
  static const Color neutral50 = Color(0xFFFAFAFA); // Very light neutral color
  static const Color neutral100 = Color(0xFFF5F5F5); // Light neutral color
  static const Color neutral200 = Color(0xFFE5E5E5); // Light medium neutral color
  static const Color neutral300 = Color(0xFFD4D4D4); // Medium neutral color
  static const Color neutral400 = Color(0xFFA3A3A3); // Muted neutral color
  static const Color neutral500 = Color(0xFF737373); // Standard neutral color
  static const Color neutral600 = Color(0xFF525252); // Slightly darker neutral color
  static const Color neutral700 = Color(0xFF404040); // Darker neutral color
  static const Color neutral800 = Color(0xFF262626); // Very dark neutral color
  static const Color neutral900 = Color(0xFF171717); // Almost black neutral color
  static const Color neutral950 = Color(0xFF0A0A0A); // Extremely dark neutral color

  // Stone colors - Earthy grays with a warm undertone
  static const Color stone50 = Color(0xFFFAFAF9); // Very light stone color
  static const Color stone100 = Color(0xFFF5F5F4); // Light stone color
  static const Color stone200 = Color(0xFFE7E5E4); // Light medium stone color
  static const Color stone300 = Color(0xFFD6D3D1); // Soft medium stone color
  static const Color stone400 = Color(0xFFA8A29E); // Muted stone color
  static const Color stone500 = Color(0xFF78716C); // Standard stone color
  static const Color stone600 = Color(0xFF57534E); // Slightly darker stone color
  static const Color stone700 = Color(0xFF44403C); // Darker stone color
  static const Color stone800 = Color(0xFF292524); // Very dark stone color
  static const Color stone900 = Color(0xFF1C1917); // Almost black stone color
  static const Color stone950 = Color(0xFF0C0A09); // Extremely dark stone color

  // Red colors - A range of red tones, from light to dark
  static const Color red50 = Color(0xFFFEF2F2); // Very light red color
  static const Color red100 = Color(0xFFFEE2E2); // Light red color
  static const Color red200 = Color(0xFFFECECE); // Light medium red color
  static const Color red300 = Color(0xFFFCACAC); // Medium red color
  static const Color red400 = Color(0xFFF87171); // Muted red color
  static const Color red500 = Color(0xFFEF4444); // Standard red color
  static const Color red600 = Color(0xFFDC2626); // Slightly darker red color
  static const Color red700 = Color(0xFFB91C1C); // Darker red color
  static const Color red800 = Color(0xFF991B1B); // Very dark red color
  static const Color red900 = Color(0xFF7F1D1D); // Almost black red color
  static const Color red950 = Color(0xFF450A0A); // Extremely dark red color

  // Orange colors - A range of warm orange tones
  static const Color orange50 = Color(0xFFFFF7ED); // Very light orange color
  static const Color orange100 = Color(0xFFFFEDD5); // Light orange color
  static const Color orange200 = Color(0xFFFED7AA); // Light medium orange color
  static const Color orange300 = Color(0xFFFDBA74); // Medium orange color
  static const Color orange400 = Color(0xFFFB923C); // Muted orange color
  static const Color orange500 = Color(0xFFF97316); // Standard orange color
  static const Color orange600 = Color(0xFFEA580C); // Slightly darker orange color
  static const Color orange700 = Color(0xFFC2410C); // Darker orange color
  static const Color orange800 = Color(0xFF9A3412); // Very dark orange color
  static const Color orange900 = Color(0xFF7C2D12); // Almost black orange color
  static const Color orange950 = Color(0xFF431407); // Extremely dark orange color

  // Amber colors - A range of golden to amber tones
  static const Color amber50 = Color(0xFFFFFBEB); // Very light amber color
  static const Color amber100 = Color(0xFFFEF3C7); // Light amber color
  static const Color amber200 = Color(0xFFFDE68A); // Light medium amber color
  static const Color amber300 = Color(0xFFFCD34D); // Medium amber color
  static const Color amber400 = Color(0xFFFBDF24); // Muted amber color
  static const Color amber500 = Color(0xFFF59E0B); // Standard amber color
  static const Color amber600 = Color(0xFFD97706); // Slightly darker amber color
  static const Color amber700 = Color(0xFFB45309); // Darker amber color
  static const Color amber800 = Color(0xFF92400E); // Very dark amber color
  static const Color amber900 = Color(0xFF78350F); // Almost black amber color
  static const Color amber950 = Color(0xFF4A2C1C); // Extremely dark amber color

  // Yellow colors - A range of bright yellow tones
  static const Color yellow50 = Color(0xFFFFFBEA); // Very light yellow color
  static const Color yellow100 = Color(0xFFFFF3C4); // Light yellow color
  static const Color yellow200 = Color(0xFFFEEC89); // Light medium yellow color
  static const Color yellow300 = Color(0xFFFED74D); // Medium yellow color
  static const Color yellow400 = Color(0xFFFEC20E); // Muted yellow color
  static const Color yellow500 = Color(0xFFFABF04); // Standard yellow color
  static const Color yellow600 = Color(0xFFF59E0B); // Slightly darker yellow color
  static const Color yellow700 = Color(0xFFD97706); // Darker yellow color
  static const Color yellow800 = Color(0xFFB45309); // Very dark yellow color
  static const Color yellow900 = Color(0xFF92400E); // Almost black yellow color
  static const Color yellow950 = Color(0xFF78350F); // Extremely dark yellow color

  // Green colors - A range of green tones
  static const Color green50 = Color(0xFFECFDF5); // Very light green color
  static const Color green100 = Color(0xFFD1FADF); // Light green color
  static const Color green200 = Color(0xFFAAF1D8); // Light medium green color
  static const Color green300 = Color(0xFF6EE7B7); // Medium green color
  static const Color green400 = Color(0xFF34D399); // Muted green color
  static const Color green500 = Color(0xFF10B981); // Standard green color
  static const Color green600 = Color(0xFF059669); // Slightly darker green color
  static const Color green700 = Color(0xFF047857); // Darker green color
  static const Color green800 = Color(0xFF065F46); // Very dark green color
  static const Color green900 = Color(0xFF064E3B); // Almost black green color
  static const Color green950 = Color(0xFF022C22); // Extremely dark green color

  // Emerald colors - A rich green color range
  static const Color emerald50 = Color(0xFFECFDF3); // Very light emerald color
  static const Color emerald100 = Color(0xFFD1FAE5); // Light emerald color
  static const Color emerald200 = Color(0xFFA7F3D0); // Light medium emerald color
  static const Color emerald300 = Color(0xFF6EE7B7); // Medium emerald color
  static const Color emerald400 = Color(0xFF34D399); // Muted emerald color
  static const Color emerald500 = Color(0xFF10B981); // Standard emerald color
  static const Color emerald600 = Color(0xFF059669); // Slightly darker emerald color
  static const Color emerald700 = Color(0xFF047857); // Darker emerald color
  static const Color emerald800 = Color(0xFF065F46); // Very dark emerald color
  static const Color emerald900 = Color(0xFF064E3B); // Almost black emerald color
  static const Color emerald950 = Color(0xFF022C22); // Extremely dark emerald color

  // Teal colors - A blue-green range of shades
  static const Color teal50 = Color(0xFF0AFAFA); // Very light teal color
  static const Color teal100 = Color(0xFF5FF6F6); // Light teal color
  static const Color teal200 = Color(0xFF4BCBDB); // Light medium teal color
  static const Color teal300 = Color(0xFF3B9A9A); // Medium teal color
  static const Color teal400 = Color(0xFF2A6F6F); // Muted teal color
  static const Color teal500 = Color(0xFF1A4444); // Standard teal color
  static const Color teal600 = Color(0xFF0F3232); // Slightly darker teal color
  static const Color teal700 = Color(0xFF072121); // Darker teal color
  static const Color teal800 = Color(0xFF041818); // Very dark teal color
  static const Color teal900 = Color(0xFF021616); // Almost black teal color
  static const Color teal950 = Color(0xFF010B0B); // Extremely dark teal color

  // Blue colors - A range of blue tones
  static const Color blue50 = Color(0xFFE3F2FD); // Very light blue color
  static const Color blue100 = Color(0xFFBBDEFB); // Light blue color
  static const Color blue200 = Color(0xFF90CAF9); // Light medium blue color
  static const Color blue300 = Color(0xFF64B5F6); // Medium blue color
  static const Color blue400 = Color(0xFF42A5F5); // Muted blue color
  static const Color blue500 = Color(0xFF2196F3); // Standard blue color
  static const Color blue600 = Color(0xFF1E88E5); // Slightly darker blue color
  static const Color blue700 = Color(0xFF1976D2); // Darker blue color
  static const Color blue800 = Color(0xFF1565C0); // Very dark blue color
  static const Color blue900 = Color(0xFF0D47A1); // Almost black blue color
  static const Color blue950 = Color(0xFF003C8D); // Extremely dark blue color

  // Cyan colors - A range of light to deep cyan tones
  static const Color cyan50 = Color(0xFFE0F7FA); // Very light cyan color
  static const Color cyan100 = Color(0xFFB2EBF2); // Light cyan color
  static const Color cyan200 = Color(0xFF80DEEA); // Light medium cyan color
  static const Color cyan300 = Color(0xFF4DD0E1); // Medium cyan color
  static const Color cyan400 = Color(0xFF26C6DA); // Muted cyan color
  static const Color cyan500 = Color(0xFF00BCD4); // Standard cyan color
  static const Color cyan600 = Color(0xFF00ACC1); // Slightly darker cyan color
  static const Color cyan700 = Color(0xFF0097A7); // Darker cyan color
  static const Color cyan800 = Color(0xFF00838F); // Very dark cyan color
  static const Color cyan900 = Color(0xFF006064); // Almost black cyan color
  static const Color cyan950 = Color(0xFF004C4C); // Extremely dark cyan color

  // Sky colors - A range of soft to deep sky blues
  static const Color sky50 = Color(0xFFEBF8FF); // Very light sky blue color
  static const Color sky100 = Color(0xFFBEE3F8); // Light sky blue color
  static const Color sky200 = Color(0xFF7CC3E4); // Light medium sky blue color
  static const Color sky300 = Color(0xFF38BDF8); // Medium sky blue color
  static const Color sky400 = Color(0xFF0EA5E9); // Muted sky blue color
  static const Color sky500 = Color(0xFF0284C7); // Standard sky blue color
  static const Color sky600 = Color(0xFF0369A1); // Slightly darker sky blue color
  static const Color sky700 = Color(0xFF075985); // Darker sky blue color
  static const Color sky800 = Color(0xFF0C4A6E); // Very dark sky blue color
  static const Color sky900 = Color(0xFF1E3A8A); // Almost black sky blue color
  static const Color sky950 = Color(0xFF172F3D); // Extremely dark sky blue color

  // Indigo colors - A range of rich indigo shades
  static const Color indigo50 = Color(0xFFE0E7FF); // Very light indigo color
  static const Color indigo100 = Color(0xFFC7D2FE); // Light indigo color
  static const Color indigo200 = Color(0xFFA5B4FC); // Light medium indigo color
  static const Color indigo300 = Color(0xFF818CF8); // Medium indigo color
  static const Color indigo400 = Color(0xFF6366F1); // Muted indigo color
  static const Color indigo500 = Color(0xFF4F46E5); // Standard indigo color
  static const Color indigo600 = Color(0xFF4338CA); // Slightly darker indigo color
  static const Color indigo700 = Color(0xFF3730A3); // Darker indigo color
  static const Color indigo800 = Color(0xFF312E81); // Very dark indigo color
  static const Color indigo900 = Color(0xFF1E1B6A); // Almost black indigo color
  static const Color indigo950 = Color(0xFF0C0B43); // Extremely dark indigo color

  // Violet colors - A range of vibrant violet hues
  static const Color violet50 = Color(0xFFE9D5FF); // Very light violet color
  static const Color violet100 = Color(0xFFD8B4FE); // Light violet color
  static const Color violet200 = Color(0xFF8B5CF6); // Light medium violet color
  static const Color violet300 = Color(0xFF6D28D9); // Medium violet color
  static const Color violet400 = Color(0xFF5B21B6); // Muted violet color
  static const Color violet500 = Color(0xFF4C1D95); // Standard violet color
  static const Color violet600 = Color(0xFF3B0F7D); // Slightly darker violet color
  static const Color violet700 = Color(0xFF2E0063); // Darker violet color
  static const Color violet800 = Color(0xFF190A44); // Very dark violet color
  static const Color violet900 = Color(0xFF110A30); // Almost black violet color
  static const Color violet950 = Color(0xFF0C0A2C); // Extremely dark violet color

  // Purple colors - A range of deep purple shades
  static const Color purple50 = Color(0xFFE9D5FF); // Very light purple color
  static const Color purple100 = Color(0xFFD8B4FE); // Light purple color
  static const Color purple200 = Color(0xFF8B5CF6); // Light medium purple color
  static const Color purple300 = Color(0xFF6D28D9); // Medium purple color
  static const Color purple400 = Color(0xFF5B21B6); // Muted purple color
  static const Color purple500 = Color(0xFF4C1D95); // Standard purple color
  static const Color purple600 = Color(0xFF3B0F7D); // Slightly darker purple color
  static const Color purple700 = Color(0xFF2E0063); // Darker purple color
  static const Color purple800 = Color(0xFF190A44); // Very dark purple color
  static const Color purple900 = Color(0xFF110A30); // Almost black purple color
  static const Color purple950 = Color(0xFF0C0A2C); // Extremely dark purple color

  // Fuchsia colors - A range of bright, deep pinkish purples
  static const Color fuchsia50 = Color(0xFFF5F3FF); // Very light fuchsia color
  static const Color fuchsia100 = Color(0xFFF1D8FF); // Light fuchsia color
  static const Color fuchsia200 = Color(0xFFE11D48); // Light medium fuchsia color
  static const Color fuchsia300 = Color(0xFF9A30A6); // Medium fuchsia color
  static const Color fuchsia400 = Color(0xFF7F56A1); // Muted fuchsia color
  static const Color fuchsia500 = Color(0xFF9C1A86); // Standard fuchsia color
  static const Color fuchsia600 = Color(0xFFB91C2A); // Slightly darker fuchsia color
  static const Color fuchsia700 = Color(0xFFF99C12); // Darker fuchsia color
  static const Color fuchsia800 = Color(0xFFEAA437); // Very dark fuchsia color
  static const Color fuchsia900 = Color(0xFF4C2C55); // Almost black fuchsia color
  static const Color fuchsia950 = Color(0xFF1E222B); // Extremely dark fuchsia color
}
