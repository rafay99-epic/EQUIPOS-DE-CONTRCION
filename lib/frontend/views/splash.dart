import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/constant/animation/animationFadeLeftToRight.dart';
import 'package:quotaserver/frontend/screens/LoginScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Import this

// ignore: camel_case_types
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

// ignore: camel_case_types
class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        Navigator.of(context).push(
          transitionToPage(
            const LoginScreen(),
            durationSeconds: 3,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
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
                alignment: Alignment.center,
                child: Text(
                  // "E.D.C",
                  AppLocalizations.of(context)!.edc,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: screenWidth * 0.2, // 20% of screen width
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              FittedBox(
                alignment: Alignment.center,
                child: Text(
                  // "EQUIPOSE DE CONTRACION",
                  AppLocalizations.of(context)!.equiposDeContracion,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: screenWidth * 0.1, // 10% of screen width
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.13,
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
                // "Brought to you by Quotaserv",
                AppLocalizations.of(context)!.broughtToYouByQuotaserv,
                style: GoogleFonts.poppins(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: screenWidth * 0.035, // 3.5% of screen width
                ),
              ),
              Text(
                // "quotaserv.com",
                AppLocalizations.of(context)!.quotaservCom,
                style: GoogleFonts.poppins(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: screenWidth * 0.03, // 3% of screen width
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
