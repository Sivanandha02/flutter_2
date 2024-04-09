import 'package:flutter/material.dart';
import 'package:flutter_2/utils/mycolors.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextThemes {
  static TextStyle textHeading = GoogleFonts.fahkwang(
    fontSize: 35,
    color: MyColors.textColors,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bodyTextStyle = TextStyle(
      fontSize: 20,
      color: Color.fromARGB(255, 160, 171, 0),
      fontStyle: FontStyle.italic);
}
