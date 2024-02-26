import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/frontend/screens/LoginScreen.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:quotaserver/frontend/widgets/textfeild.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    // Calculate padding and margin based on screen size
    var padding = screenSize.width * 0.01; // 1% of screen width

    return Scaffold(
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
              // Logo will come
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
                "Sign Up",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "Find your dream car!",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextFeild(
              hintText: 'Full name',
              obsuretext: false,
              controller: _nameController,
              icons: Icons.account_circle,
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextFeild(
              hintText: 'Email',
              obsuretext: false,
              controller: _emailController,
              icons: Icons.email_rounded,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextFeild(
              hintText: 'Phone Number',
              obsuretext: false,
              controller: _phoneNumberController,
              icons: Icons.phone,
              onlyNumber: true,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextFeild(
              hintText: 'Password',
              obsuretext: true,
              controller: _passwordController,
              icons: Icons.password_rounded,
            ),
            const SizedBox(
              height: 10,
            ),
            // Forget Password

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(
                  screenSize.width * 0.05,
                ), // Adjust the padding as needed
                child: MyButton(
                  text: "Sign Up",
                  textColor: Theme.of(context).colorScheme.tertiary,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  onTap: () => {},
                  fontSize: 18.0,
                  width: 0,
                ),
              ),
            ),
            //  or Section

            //Google Sign In Button
            const SizedBox(
              height: 20,
            ),
            InkWell(
              child: Text(
                "Sing Up with",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            // Sign Up Button
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account? ",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const LoginScreen(),
                          transitionDuration: const Duration(
                            milliseconds: 500,
                          ), // Adjust the duration as needed
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = const Offset(1.0, 0.0);
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
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Rest of your widgets go here
          ],
        ),
      ),
    ));
  }
}
