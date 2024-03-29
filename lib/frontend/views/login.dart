import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/frontend/screens/SignUpScreen.dart';
import 'package:quotaserver/frontend/screens/VerficationScreen.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:quotaserver/frontend/widgets/textfeild.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

// class _LoginState extends State<Login> {
//   final TextEditingController _usernameController = TextEditingController();

//   final TextEditingController _passwordController = TextEditingController();

//   bool _isRememberMe = false;

//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     // Calculate padding and margin based on screen size
//     var padding = screenSize.width * 0.01; // 1% of screen width

//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(padding),
//           child: Column(
//             children: <Widget>[
//               const SizedBox(
//                 height: 50,
//               ),
//               Center(
//                 // Logo will come
//                 child: Image.asset(
//                   'assets/images/logo_1.png',
//                   width: 150,
//                   height: 150,
//                 ), // Replace with your logo path
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Center(
//                 child: Text(
//                   // "Login",
//                   AppLocalizations.of(context)!.login,
//                   style: GoogleFonts.poppins(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Theme.of(context).colorScheme.primary,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 5,
//               ),
//               Center(
//                 child: Text(
//                   "Welcome to E.D.C",
//                   style: GoogleFonts.poppins(
//                     fontSize: 14,
//                     color: Theme.of(context).colorScheme.primary,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               MyTextFeild(
//                 hintText: 'Username',
//                 obsuretext: false,
//                 controller: _usernameController,
//                 icons: Icons.account_circle,
//                 showIcon: true,
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               MyTextFeild(
//                 hintText: 'Password',
//                 obsuretext: true,
//                 controller: _passwordController,
//                 icons: Icons.lock,
//                 showIcon: true,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               // Forget Password
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: screenSize.width * 0.05,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     InkWell(
//                       onTap: () {},
//                       child: Text(
//                         "Forget Password?",
//                         style: GoogleFonts.poppins(
//                           fontSize: 14,
//                           color: Theme.of(context).colorScheme.secondary,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               //Remember Me Checkbox
//               CheckboxListTile(
//                 title: Text(
//                   "Remember Me",
//                   style: GoogleFonts.poppins(
//                       fontSize: 14,
//                       color: Theme.of(context).colorScheme.primary,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 value: _isRememberMe,
//                 onChanged: (bool? value) {
//                   setState(() {
//                     _isRememberMe = value!;
//                   });
//                 },
//                 controlAffinity: ListTileControlAffinity.leading,
//                 activeColor: Theme.of(context)
//                     .colorScheme
//                     .secondary, //  <-- leading Checkbox
//               ),

//               // Sign In Button
//               SizedBox(
//                 width: double.infinity,
//                 child: Padding(
//                   padding: EdgeInsets.all(
//                     screenSize.width * 0.05,
//                   ), // Adjust the padding as needed
//                   child: MyButton(
//                     text: "Login",
//                     textColor: Theme.of(context).colorScheme.tertiary,
//                     backgroundColor: Theme.of(context).colorScheme.secondary,
//                     onTap: () => {
//                       Navigator.of(context).push(
//                         PageRouteBuilder(
//                           pageBuilder:
//                               (context, animation, secondaryAnimation) =>
//                                   const verficationScreen(),
//                           transitionDuration: const Duration(
//                             milliseconds: 500,
//                           ), // Adjust the duration as needed
//                           transitionsBuilder:
//                               (context, animation, secondaryAnimation, child) {
//                             var begin = Offset(1.0, 0.0);
//                             var end = Offset.zero;
//                             var curve = Curves.ease;

//                             var tween = Tween(begin: begin, end: end)
//                                 .chain(CurveTween(curve: curve));

//                             return FadeTransition(
//                               opacity: animation,
//                               child: SlideTransition(
//                                 position: animation.drive(tween),
//                                 child: child,
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     },
//                     fontSize: 18.0,
//                     width: 0,
//                   ),
//                 ),
//               ),
//               //  or Section
//               Padding(
//                 padding: const EdgeInsets.only(
//                   top: 5.0,
//                   left: 20,
//                   right: 20,
//                 ),
//                 // ignore: sized_box_for_whitespace
//                 child: Container(
//                   width: double.infinity,
//                   child: const Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: Divider(
//                           color: Colors.grey,
//                           height: 1.5,
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 10),
//                         child: Text(
//                           "OR",
//                           style: TextStyle(
//                             color: Colors.grey,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: Divider(
//                           color: Colors.grey,
//                           height: 1.5,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               //Google Sign In Button
//               const SizedBox(
//                 height: 20,
//               ),
//               InkWell(
//                 child: Text(
//                   "Sing Up with",
//                   style: GoogleFonts.poppins(
//                     fontSize: 14,
//                     color: Theme.of(context).colorScheme.secondary,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),

//               const SizedBox(
//                 height: 10,
//               ),

//               InkWell(
//                 onTap: () {
//                   // Handle sign up with Google
//                 },
//                 child: Container(
//                   width: 60, // Adjust the size as needed
//                   height: 60, // Adjust the size as needed
//                   decoration: const BoxDecoration(
//                     // color: Colors.white,
//                     shape: BoxShape.circle,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(
//                         8.0), // Adjust the padding as needed
//                     child: SvgPicture.asset(
//                       'assets/svg/google.svg',
//                     ),
//                   ),
//                 ),
//               ),
//               // Sign Up Button
//               Padding(
//                 padding: const EdgeInsets.only(top: 10.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       "Don't have an account? ",
//                       style: GoogleFonts.poppins(
//                         fontSize: 14,
//                         color: Theme.of(context).colorScheme.primary,
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         Navigator.of(context).push(
//                           PageRouteBuilder(
//                             pageBuilder:
//                                 (context, animation, secondaryAnimation) =>
//                                     const SignUpPage(),
//                             transitionDuration: const Duration(
//                               milliseconds: 500,
//                             ), // Adjust the duration as needed
//                             transitionsBuilder: (context, animation,
//                                 secondaryAnimation, child) {
//                               var begin = Offset(1.0, 0.0);
//                               var end = Offset.zero;
//                               var curve = Curves.ease;

//                               var tween = Tween(begin: begin, end: end)
//                                   .chain(CurveTween(curve: curve));

//                               return FadeTransition(
//                                 opacity: animation,
//                                 child: SlideTransition(
//                                   position: animation.drive(tween),
//                                   child: child,
//                                 ),
//                               );
//                             },
//                           ),
//                         );
//                       },
//                       child: Text(
//                         "Sign Up",
//                         style: GoogleFonts.poppins(
//                           fontSize: 14,
//                           color: Theme.of(context).colorScheme.secondary,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               // Rest of your widgets go here
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class _LoginState extends State<Login> {
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool _isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var padding = screenSize.width * 0.01;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50),
              Center(
                child: Image.asset(
                  'assets/images/logo_1.png',
                  width: 150,
                  height: 150,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  AppLocalizations.of(context)!.login,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Center(
                child: Text(
                  AppLocalizations.of(context)!.welcomeToEDC,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              MyTextFeild(
                hintText: AppLocalizations.of(context)!.username,
                obsuretext: false,
                controller: _usernameController,
                icons: Icons.account_circle,
                showIcon: true,
              ),
              const SizedBox(height: 20),
              MyTextFeild(
                hintText: AppLocalizations.of(context)!.password,
                obsuretext: true,
                controller: _passwordController,
                icons: Icons.lock,
                showIcon: true,
              ),
              const SizedBox(height: 10),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Text(
                        AppLocalizations.of(context)!.forgetPassword,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CheckboxListTile(
                title: Text(
                  AppLocalizations.of(context)!.rememberMe,
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
                activeColor: Theme.of(context).colorScheme.secondary,
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(screenSize.width * 0.05),
                  child: MyButton(
                    text: AppLocalizations.of(context)!.login,
                    // text: "Login error",
                    textColor: Theme.of(context).colorScheme.tertiary,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    onTap: () => {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const verficationScreen(),
                          transitionDuration: const Duration(milliseconds: 500),
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
              Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 20, right: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: <Widget>[
                      const Expanded(
                          child: Divider(color: Colors.grey, height: 1.5)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          AppLocalizations.of(context)!.or,
                          style: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Expanded(
                          child: Divider(color: Colors.grey, height: 1.5)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                child: Text(
                  AppLocalizations.of(context)!.singUpWith,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset('assets/svg/google.svg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      AppLocalizations.of(context)!.dontHaveAnAccount,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const SignUpPage(),
                            transitionDuration:
                                const Duration(milliseconds: 500),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
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
                        AppLocalizations.of(context)!.signUp,
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
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
