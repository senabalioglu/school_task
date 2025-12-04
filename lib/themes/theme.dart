import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryClr = Color(0xFF9FA8DA);
const redClr = Color(0xFFD50000);
const pinkClr = Color(0xFFff4667);
const  tealClr = Color(0xFF00B8D4);
const bluishClr=Color(0xFF4e5ae8);
const yellowClr = Color(0xFFFFB746);
const Color darkGreyClr=Color(0xFF121212);
//Color(0xFF00B8D4);
TextStyle get subHeadingStyle{
  return GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black
      )
  );

}
TextStyle get headingStyle{
  return GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
          color: Colors.black
      )
    );
  }

TextStyle get titleStyle{
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black
      )
  );
}
TextStyle get subtitleStyle{
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.black
      )
  );
}