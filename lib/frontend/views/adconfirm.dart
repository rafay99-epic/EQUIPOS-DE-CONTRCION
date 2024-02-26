// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class adConfirm extends StatefulWidget {
  const adConfirm({super.key});

  @override
  State<adConfirm> createState() => _adConfirmState();
}

class _adConfirmState extends State<adConfirm> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(screenSize.width * 0.03),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/ad.png',
              ),
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              Text(
                'Ad Confirm ',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: screenSize.width * 0.07,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'IYour order has been confirmed, we will send you confirmation email shortly.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: screenSize.width * 0.03,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
