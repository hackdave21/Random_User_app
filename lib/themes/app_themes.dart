import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static Color appColor = const Color(0xFF007D78);
  static Color noir = Colors.black;
  static Color blanc = Colors.white;

  TextStyle appStyle(double size, Color color, {bool isBold = false}) {
    return GoogleFonts.mPlusRounded1c(
      fontSize: size,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      color: color,
    );
  }

   TextStyle buttonTextStyle(double size, Color color, {bool isBold = false}) {
    return GoogleFonts.dmSans(
      fontSize: size,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      color: color,
    );
  }
}