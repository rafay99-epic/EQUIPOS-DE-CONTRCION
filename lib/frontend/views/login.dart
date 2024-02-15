import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/frontend/screens/HomeScreen.dart';
import 'package:quotaserver/frontend/screens/SignUpScreen.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:quotaserver/frontend/widgets/textfeild.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool _isRememberMe = false;

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
            const Center(
                // Logo will come
                // child: Image.asset('assets/images/logo.png'), // Replace with your logo path
                ),
            const SizedBox(
              height: 200,
            ),
            Center(
              child: Text(
                "Login",
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
                "Welcome to CarStore",
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
              hintText: 'Username',
              obsuretext: false,
              controller: _usernameController,
              icons: Icons.account_circle,
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextFeild(
              hintText: 'Password',
              obsuretext: true,
              controller: _passwordController,
              icons: Icons.lock,
            ),
            const SizedBox(
              height: 10,
            ),
            // Forget Password
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Forget Password?",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Remember Me Checkbox
            CheckboxListTile(
              title: Text(
                "Remember Me",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold),
              ),
              value: _isRememberMe,
              onChanged: (bool? value) {
                setState(() {
                  _isRememberMe = value!;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: Theme.of(context)
                  .colorScheme
                  .secondary, //  <-- leading Checkbox
            ),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(
                  screenSize.width * 0.05,
                ), // Adjust the padding as needed
                child: MyButton(
                  text: "Login",
                  textColor: Theme.of(context).colorScheme.tertiary,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  onTap: () => {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
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
            //  or Section
            Padding(
              padding: const EdgeInsets.only(
                top: 5.0,
                left: 20,
                right: 20,
              ), // Adjust the padding as needed
              // ignore: sized_box_for_whitespace
              child: Container(
                width: double.infinity,
                child: const Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        height: 1.5,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "OR",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
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

            InkWell(
              onTap: () {
                // Handle sign up with Google
              },
              child: Container(
                width: 60, // Adjust the size as needed
                height: 60, // Adjust the size as needed
                decoration: const BoxDecoration(
                  // color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.all(8.0), // Adjust the padding as needed
                  child: SvgPicture.asset(
                    'assets/svg/google.svg',
                  ),
                ),
              ),
            ),
            // Sign Up Button
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an account? ",
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
                                  const SignUpPage(),
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
                      );
                    },
                    child: Text(
                      "Sign Up",
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
