// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:quotaserver/frontend/widgets/myButton.dart';
// import 'package:quotaserver/frontend/widgets/textfeild.dart';

// // ignore: camel_case_types
// class editProfile extends StatefulWidget {
//   const editProfile({super.key});

//   @override
//   State<editProfile> createState() => _editProfileState();
// }

// class _editProfileState extends State<editProfile> {
//   //controller for text Feild
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _phoneNumberController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;

//     var padding = screenSize.width * 0.01; // 1% of screen width

//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(padding),
//           child: Column(
//             children: <Widget>[
//               const SizedBox(
//                 height: 20,
//               ),
//               Center(
//                 child: Image.asset(
//                   'assets/images/logo_1.png',
//                   width: 150,
//                   height: 150,
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Center(
//                 child: Text(
//                   "Edit Profile",
//                   style: GoogleFonts.poppins(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Theme.of(context).colorScheme.primary,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               MyTextFeild(
//                 hintText: 'Full Name',
//                 obsuretext: false,
//                 controller: _nameController,
//                 icons: Icons.account_circle,
//                 showShadow: false,
//                 showIcon: true,
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               MyTextFeild(
//                 hintText: 'Email adress',
//                 obsuretext: false,
//                 controller: _emailController,
//                 icons: Icons.model_training_rounded,
//                 showIcon: true,
//                 showShadow: false,
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               MyTextFeild(
//                 hintText: 'Phone Number',
//                 obsuretext: false,
//                 controller: _phoneNumberController,
//                 icons: Icons.phone,
//                 onlyNumber: true,
//                 showShadow: false,
//                 showIcon: true,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               MyTextFeild(
//                 hintText: 'Password',
//                 obsuretext: true,
//                 controller: _passwordController,
//                 icons: Icons.lock,
//                 onlyNumber: false,
//                 showShadow: false,
//                 showIcon: true,
//               ),

//               // request Item Button In Button
//               SizedBox(
//                 width: double.infinity,
//                 child: Padding(
//                   padding: EdgeInsets.all(
//                     screenSize.width * 0.05,
//                   ),
//                   child: MyButton(
//                     text: "Request Item",
//                     textColor: Theme.of(context).colorScheme.tertiary,
//                     backgroundColor: Theme.of(context).colorScheme.secondary,
//                     onTap: () => {
//                       if (_nameController.text.isEmpty ||
//                           _emailController.text.isEmpty ||
//                           _phoneNumberController.text.isEmpty ||
//                           _passwordController.text.isEmpty)
//                         {
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               return AlertDialog(
//                                 title: Center(
//                                   child: Text(
//                                     'Error',
//                                     style: GoogleFonts.poppins(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold,
//                                       color:
//                                           Theme.of(context).colorScheme.primary,
//                                     ),
//                                   ),
//                                 ),
//                                 content: Text(
//                                   'Some fields are empty.',
//                                   style: GoogleFonts.poppins(
//                                     fontSize: 16,
//                                     color:
//                                         Theme.of(context).colorScheme.primary,
//                                   ),
//                                 ),
//                                 actions: <Widget>[
//                                   SizedBox(
//                                     width: double.infinity,
//                                     child: TextButton(
//                                       style: TextButton.styleFrom(
//                                         backgroundColor: Colors.amber,
//                                       ),
//                                       child: Text(
//                                         'OK',
//                                         style: GoogleFonts.poppins(
//                                           fontSize: 16,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                       onPressed: () {
//                                         Navigator.of(context).pop();
//                                       },
//                                     ),
//                                   ),
//                                 ],
//                               );
//                             },
//                           )
//                         }
//                       else
//                         {
//                           //try and catch:
//                           //firebase connection

//                           //place data into the database

//                           // tell the user that the item has been requested
//                         }
//                     },
//                     fontSize: 18.0,
//                     width: 0,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:quotaserver/frontend/widgets/textfeild.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Import this

class editProfile extends StatefulWidget {
  const editProfile({super.key});

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  //controller for text Feild
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    var padding = screenSize.width * 0.01; // 1% of screen width

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
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
                  AppLocalizations.of(context)!.editProfile, // Use this
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextFeild(
                hintText: AppLocalizations.of(context)!.fullName, // Use this
                obsuretext: false,
                controller: _nameController,
                icons: Icons.account_circle,
                showShadow: false,
                showIcon: true,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                hintText:
                    AppLocalizations.of(context)!.emailAddress, // Use this
                obsuretext: false,
                controller: _emailController,
                icons: Icons.model_training_rounded,
                showIcon: true,
                showShadow: false,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                hintText: AppLocalizations.of(context)!.phoneNumber, // Use this
                obsuretext: false,
                controller: _phoneNumberController,
                icons: Icons.phone,
                onlyNumber: true,
                showShadow: false,
                showIcon: true,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextFeild(
                hintText: AppLocalizations.of(context)!.password, // Use this
                obsuretext: true,
                controller: _passwordController,
                icons: Icons.lock,
                onlyNumber: false,
                showShadow: false,
                showIcon: true,
              ),

              // request Item Button In Button
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(
                    screenSize.width * 0.05,
                  ),
                  child: MyButton(
                    text: AppLocalizations.of(context)!.requestItem, // Use this
                    textColor: Theme.of(context).colorScheme.tertiary,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    onTap: () => {
                      if (_nameController.text.isEmpty ||
                          _emailController.text.isEmpty ||
                          _phoneNumberController.text.isEmpty ||
                          _passwordController.text.isEmpty)
                        {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Center(
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .error, // Use this
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                                content: Text(
                                  AppLocalizations.of(context)!
                                      .someFieldsAreEmpty, // Use this
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                                actions: <Widget>[
                                  SizedBox(
                                    width: double.infinity,
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.amber,
                                      ),
                                      child: Text(
                                        AppLocalizations.of(context)!
                                            .ok, // Use this
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ),
                                ],
                              );
                            },
                          )
                        }
                      else
                        {
                          //try and catch:
                          //firebase connection

                          //place data into the database

                          // tell the user that the item has been requested
                        }
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
