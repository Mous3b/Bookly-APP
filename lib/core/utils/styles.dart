import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Stylesinter {
  static TextStyle get textStyle14 => GoogleFonts.inter(
        fontSize: 14,
        color: Colors.white,
      );

  static TextStyle get textStyle16 => GoogleFonts.inter(
        fontSize: 16,
        color: Colors.white,
      );

  static TextStyle get textStyle18 => GoogleFonts.inter(
        fontSize: 18,
        color: Colors.white,
      );

  static TextStyle get textStyle20 => GoogleFonts.inter(
        fontSize: 20,
        color: Colors.white,
      );
}

abstract class StylesSegoeUI {
  static const textstyle14 = TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontFamily: "Segoe UI",
  );
  static const textstyle16 = TextStyle(
    fontSize: 16,
    // fontFamily: GoogleFonts.inter,
    color: Colors.white,
    fontFamily: "Segoe UI",
  );
  static const textstyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: "Segoe UI",
  );
  static const textstyle20 = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontFamily: "Segoe UI",
  );
}
