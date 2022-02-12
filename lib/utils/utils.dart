import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Utils {
  static Widget textPoppins(
    String texto, {
    double spacing = .4,
    double fontsize = 16,
    TextAlign txtalgn = TextAlign.center,
    Color fontcolor = Colors.white,
    TextOverflow overflw = TextOverflow.ellipsis,
    FontWeight fontweight = FontWeight.w400,
  }) {
    return Text(
      texto,
      textAlign: txtalgn,
      overflow: overflw,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: fontcolor,
          letterSpacing: spacing,
          fontSize: fontsize,
          fontWeight: fontweight,
        ),
      ),
    );
  }
}
