import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appStyle(
  double fs,
  FontWeight fw, {
  color = Colors.white,
  fontStyle = FontStyle.normal,
  TextOverflow textOverflow = TextOverflow.ellipsis,
}) =>
    GoogleFonts.poppins().copyWith(
      fontSize: fs,
      fontWeight: fw,
      color: color,
      fontStyle: fontStyle,
      overflow: textOverflow,
    );
