// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/frontend/screens/HomeScreen.dart';
import 'package:quotaserver/frontend/widgets/appbar.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:quotaserver/frontend/widgets/textfeild.dart';

class verfication extends StatefulWidget {
  verfication({super.key});

  @override
  State<verfication> createState() => _verficationState();

  final TextEditingController _verifyCodeController = TextEditingController();
}

class _verficationState extends State<verfication> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    // Calculate padding and margin based on screen size
    var padding = screenSize.width * 0.01; // 1% of screen width
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(padding),
          // margin: EdgeInsets.all(margin),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 60,
              ),
              Center(
                child: Image.asset(
                  'assets/images/logo_1.png',
                  width: 150,
                  height: 150,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Enter Verification Code",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              MyTextFeild(
                hintText: 'Verfication Code',
                obsuretext: false,
                onlyNumber: true,
                controller: widget._verifyCodeController,
                icons: Icons.key,
                showShadow: false,
                showIcon: true,
              ),
              const SizedBox(
                height: 20,
              ),

              // Forget Password
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width * 0.08,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Did not receive yet? ",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Add your resend logic here
                      },
                      child: Text(
                        "Resend",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenSize.height * 0.25),
              // Sign In Button
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(
                    screenSize.width * 0.05,
                  ), // Adjust the padding as needed
                  child: MyButton(
                    text: "Verify",
                    textColor: Theme.of(context).colorScheme.tertiary,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    onTap: () => {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const HomePage(),
                          transitionDuration: const Duration(
                            milliseconds: 500,
                          ), // Adjust the duration as needed
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = Offset(1.0, 0.0);
                            var end = Offset.zero;
                            var curve = Curves.ease;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));

                            return FadeTransition(
                              opacity: animation,
                              child: SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              ),
                            );
                          },
                        ),
                      ),
                    },
                    fontSize: 18.0,
                    width: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
