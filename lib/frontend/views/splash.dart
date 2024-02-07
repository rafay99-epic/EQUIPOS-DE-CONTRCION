import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quotaserver/frontend/screens/LoginScreen.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

// ignore: camel_case_types
class _splashState extends State<splash> {
  // @override
  // void initState() {
  //   super.initState();
  //   Navigator.of(context).pushReplacement(
  //     PageRouteBuilder(
  //       pageBuilder: (context, animation, secondaryAnimation) =>
  //           const LoginScreen(),
  //       transitionDuration:
  //           const Duration(seconds: 2), // Adjust the duration as needed
  //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //         return FadeTransition(
  //           opacity: animation,
  //           child: child,
  //         );
  //       },
  //     ),
  //   );

  //   // Timer(
  //   //   const Duration(seconds: 3),
  //   //   () {
  //   //     Navigator.push(
  //   //       context,
  //   //       PageTransition(
  //   //         child: const LoginScreen(),
  //   //         type: PageTransitionType.rightToLeftWithFade,
  //   //       ),
  //   //     );
  //   //   },
  //   // );
  // }
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback(
      (_) {
        Timer(
          const Duration(seconds: 3),
          () {
            Navigator.push(
              context,
              PageTransition(
                child: const LoginScreen(),
                type: PageTransitionType.rightToLeftWithFade,
              ),
            );
          },
        );
        // Navigator.of(context).pushReplacement(
        //   PageRouteBuilder(
        //     pageBuilder: (context, animation, secondaryAnimation) =>
        //         const LoginScreen(),
        //     transitionDuration: const Duration(
        //       seconds: 6,
        //     ), // Adjust the duration as needed
        //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
        //       return FadeTransition(
        //         opacity: animation,
        //         child: child,
        //       );
        //     },
        //   ),
        // );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Set the color of the status bar to match the background color

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Container(
        margin: EdgeInsets.all(screenWidth * 0.05), // 5% margin of screen width
        child: Padding(
          padding:
              EdgeInsets.all(screenWidth * 0.05), // 5% padding of screen width
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.2), // 20% of screen height
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "E.D.C",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: screenWidth * 0.2, // 20% of screen width
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02), // 2% of screen height
              FittedBox(
                child: Text(
                  "EQUIPOSE DE CONTRACION",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: screenWidth * 0.1, // 10% of screen width
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.10,
              ), // 7% of screen height
              SvgPicture.asset(
                'assets/svg/splash.svg',
                // ignore: deprecated_member_use
                color: Colors.white,
                width: screenWidth * 0.4, // 60% of screen width
                height: screenHeight * 0.2, // 30% of screen height
              ),

              const Spacer(),
              Text(
                "Brought to you by Quotaserv",
                style: GoogleFonts.poppins(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: screenWidth * 0.035, // 3.5% of screen width
                ),
              ),
              Text(
                "https://www.quotaserv.com/",
                style: GoogleFonts.poppins(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: screenWidth * 0.03, // 3% of screen width
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
