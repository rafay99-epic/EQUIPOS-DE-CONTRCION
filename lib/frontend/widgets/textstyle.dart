import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTexxtStyle extends StatelessWidget {
  final double? fontSize;
  final FontWeight? fontWeight;
  final String text;
  final Color? color;
  final TextAlign? textAlign;

  const MyTexxtStyle({
    Key? key,
    this.fontSize,
    this.fontWeight,
    required this.text,
    this.textAlign,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
