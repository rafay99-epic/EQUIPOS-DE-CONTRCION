import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:quotaserver/frontend/widgets/textfeild.dart';
import 'package:quotaserver/frontend/widgets/textstyle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Import this

class SellRegistration extends StatefulWidget {
  const SellRegistration({super.key});

  @override
  State<SellRegistration> createState() => _SellRegistrationState();
}

class _SellRegistrationState extends State<SellRegistration> {
  int? selectedRadio;

  //controller for text Feild
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _reEnterpasswordController =
      TextEditingController();
  final TextEditingController _parentController = TextEditingController();
  final TextEditingController _reEnterPhoneNumberController =
      TextEditingController();
  final TextEditingController _reEnterEmailCotroller = TextEditingController();

  //controller for radio button
  setSelectedRadio(int? val) {
    setState(() {
      selectedRadio = val;
    });
  }

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
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Image.asset(
                  'assets/images/logo_1.png',
                  width: 150,
                  height: 150,
                ), // Replace with your logo path
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  AppLocalizations.of(context)!.sellerRegistration,
                  // "Seller Registration",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextFeild(
                // hintText: 'Full Name',
                hintText: AppLocalizations.of(context)!.fullName,
                obsuretext: false,
                controller: _nameController,
                icons: Icons.account_circle,
                showIcon: true,
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextFeild(
                // hintText: 'Parents',
                hintText: AppLocalizations.of(context)!.parents,
                obsuretext: false,
                controller: _parentController,
                icons: Icons.account_circle,
                showIcon: true,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                // hintText: 'Email',
                hintText: AppLocalizations.of(context)!.email,
                obsuretext: false,
                controller: _emailController,
                icons: Icons.email_rounded,
                showIcon: true,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                // hintText: 'Reperat Email',
                hintText: AppLocalizations.of(context)!.reperatEmail,
                obsuretext: false,
                controller: _reEnterEmailCotroller,
                icons: Icons.email_rounded,
                showIcon: true,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                // hintText: 'Phone Number',
                hintText: AppLocalizations.of(context)!.phoneNumber,
                obsuretext: false,
                controller: _phoneNumberController,
                icons: Icons.phone,
                showIcon: true,
                onlyNumber: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 0,
                  bottom: 0,
                ),
                child: Row(
                  children: <Widget>[
                    Radio(
                      value: 1,
                      fillColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.amber),
                      groupValue: selectedRadio,
                      activeColor: Colors.amber,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    ),
                    MyTexxtStyle(
                      // text: 'WhatsApp',
                      text: AppLocalizations.of(context)!.whatsApp,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Radio(
                      value: 2,
                      groupValue: selectedRadio,
                      activeColor: Colors.amber,
                      fillColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.amber),
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    ),
                    MyTexxtStyle(
                      // text: 'Office',
                      text: AppLocalizations.of(context)!.office,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Radio(
                      value: 3,
                      fillColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.amber),
                      groupValue: selectedRadio,
                      activeColor: Colors.amber,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    ),
                    MyTexxtStyle(
                      // text: 'Other',
                      text: AppLocalizations.of(context)!.other,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              MyTextFeild(
                // hintText: ' Another Phone Number',
                hintText: AppLocalizations.of(context)!.anotherPhoneNumber,
                obsuretext: false,
                controller: _reEnterPhoneNumberController,
                icons: Icons.phone,
                onlyNumber: true,
                showIcon: true,
              ),

              const SizedBox(
                height: 20,
              ),

              MyTextFeild(
                // hintText: 'Password',
                hintText: AppLocalizations.of(context)!.password,
                obsuretext: true,
                controller: _passwordController,
                icons: Icons.password,
                showIcon: true,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                // hintText: 'Repeat Password',
                hintText: AppLocalizations.of(context)!.repeatPassword,
                obsuretext: true,
                controller: _reEnterpasswordController,
                icons: Icons.password,
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
                    text: AppLocalizations.of(context)!.signUp,
                    // text: "Sign Up",
                    textColor: Theme.of(context).colorScheme.tertiary,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    onTap: () => {
                      if (_emailController.text !=
                              _reEnterEmailCotroller.text ||
                          _passwordController.text !=
                              _reEnterpasswordController.text ||
                          _phoneNumberController.text !=
                              _reEnterPhoneNumberController.text ||
                          _nameController.text.isEmpty ||
                          _parentController.text.isEmpty ||
                          _emailController.text.isEmpty ||
                          _reEnterEmailCotroller.text.isEmpty ||
                          _phoneNumberController.text.isEmpty ||
                          _reEnterPhoneNumberController.text.isEmpty ||
                          _passwordController.text.isEmpty ||
                          _reEnterpasswordController.text.isEmpty)
                        {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Center(
                                  child: Text(
                                    // 'Error',
                                    AppLocalizations.of(context)!.error,
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
                                      .theEnteredInformationDoesNotMatchOrSomeFieldsAreEmpty,
                                  // 'The entered information does not match or some fields are empty.',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                                actions: <Widget>[
                                  Container(
                                    width: double.infinity,
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.amber,
                                      ),
                                      child: Text(
                                        // 'OK',
                                        AppLocalizations.of(context)!.ok,
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

                      //try and catch:
                      //firebase connection

                      //place data into the database

                      // tell the user that the item has been requested
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
