import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../text_theme.dart';

class TextThemeLight implements ITextTheme {
  @override
  late final TextTheme data;

  @override
  TextStyle? bodyText1;

  @override
  TextStyle? bodyText2;

  @override
  TextStyle? headline1;

  @override
  TextStyle? headline3;

  @override
  TextStyle? headline4;

  @override
  TextStyle? headline5;

  @override
  TextStyle? headline6;

  @override
  TextStyle? subtitle1;

  @override
  TextStyle? subtitle2;
  @override
  final Color? primaryColor;  

  TextThemeLight(this.primaryColor) {
    data = TextTheme(
      headline6: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
      subtitle1: GoogleFonts.nunito(fontWeight: FontWeight.w400,color: Colors.white),

      bodyText1: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 17),
      bodyText2: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 18),
      headline1: GoogleFonts.nunito(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.black),
      headline2: GoogleFonts.nunito(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.black),
      headline3: GoogleFonts.nunito(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black),
      headline4: GoogleFonts.nunito(fontWeight: FontWeight.w700,fontSize: 24,color: Colors.black),
      
      
    ).apply();
    fontFamily = GoogleFonts.nunito().fontFamily;
  }

  @override
  String? fontFamily;
}