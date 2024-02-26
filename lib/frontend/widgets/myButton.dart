import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback onTap;
  final double fontSize;
  final FontWeight fontWeight;
  final bool isBold; // Add this line

  const MyButton({
    Key? key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.onTap,
    required this.fontSize,
    required double width,
    this.fontWeight = FontWeight.w500,
    this.isBold = false, // Add this line
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: textColor,
            fontSize: fontSize,
            fontWeight: isBold ? FontWeight.bold : fontWeight,
          ),
        ),
      ),
    );
  }
}
