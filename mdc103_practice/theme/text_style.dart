import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


TextStyle TitleStyle1({double? height, Color? color}) {
  return GoogleFonts.rubik(
    fontSize: 24.0,
    fontWeight: FontWeight.w400,
    height:  height ?? 1.4,
    color: color


  );
}

TextStyle BodyStyle1({double? height, Color? color}) {
  return GoogleFonts.bebasNeue(
    fontSize: 15,
      fontWeight: FontWeight.w200,
      height:  height ?? 1.0,
      color: color
  );
}

TextStyle BodyStyle2({double? height, Color? color}) {
  return GoogleFonts.notoSans(
      fontSize: 15,
      fontWeight: FontWeight.w100,
      height:  height ?? 2.0,
      color: color
  );
}

