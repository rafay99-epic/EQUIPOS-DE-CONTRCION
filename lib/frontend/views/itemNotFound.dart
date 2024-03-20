// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:quotaserver/frontend/widgets/textfeild.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Import this

class ItemNotFound extends StatefulWidget {
  const ItemNotFound({super.key});

  @override
  State<ItemNotFound> createState() => _ItemNotFoundState();
}

class _ItemNotFoundState extends State<ItemNotFound> {
  //controller for text Feild
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _brandController = TextEditingController();
  final TextEditingController _modelController = TextEditingController();
  final TextEditingController _budgetController = TextEditingController();
  final TextEditingController _timeNeededController = TextEditingController();
  final TextEditingController _cityCountryController = TextEditingController();

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
                  // "Item not Found",
                  AppLocalizations.of(context)!.itemNotFound,
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
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    AppLocalizations.of(context)!
                        .sorryTheItemYouAreLookingForIsNotAvailableAtTheMomentButIfYouWouldLikeUsToNotifyYouWhenOneGoesOnSalePleaseProvideTheFollowingInformation,
                    // "Sorry, the item you are looking for is not available at the moment, but if you would like us to notify you when one goes on sale, please provide the following information:",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
              MyTextFeild(
                // hintText: 'Category',
                hintText: AppLocalizations.of(context)!.category,
                obsuretext: false,
                controller: _categoryController,
                showIcon: false,
                showShadow: false,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                // hintText: 'Brand',
                hintText: AppLocalizations.of(context)!.brand,
                obsuretext: false,
                controller: _brandController,
                showIcon: false,
                showShadow: false,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                // hintText: 'Model',
                hintText: AppLocalizations.of(context)!.model,
                obsuretext: false,
                controller: _modelController,
                showIcon: false,
                showShadow: false,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                // hintText: 'Budget US Dollar (USD)',
                hintText: AppLocalizations.of(context)!.budgetUSD,
                obsuretext: false,
                controller: _budgetController,
                showShadow: false,
                icons: Icons.money,
                showIcon: false,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                // hintText: 'When you need it',
                hintText: AppLocalizations.of(context)!.whenYouNeedIt,
                obsuretext: false,
                controller: _timeNeededController,
                showIcon: false,
                showShadow: false,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                // hintText: 'Name',
                hintText: AppLocalizations.of(context)!.name,
                obsuretext: false,
                controller: _nameController,
                showShadow: false,
                showIcon: false,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                // hintText: 'City and Country',
                hintText: AppLocalizations.of(context)!.cityAndCountry,
                obsuretext: false,
                controller: _cityCountryController,
                showIcon: false,
                showShadow: false,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                // hintText: 'Email',
                hintText: AppLocalizations.of(context)!.email,
                obsuretext: false,
                controller: _emailController,
                showIcon: false,
                showShadow: false,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextFeild(
                // hintText: 'Phone Number',
                hintText: AppLocalizations.of(context)!.phoneNumber,
                obsuretext: false,
                controller: _phoneNumberController,
                showShadow: false,
                showIcon: false,
                onlyNumber: true,
              ),
              const SizedBox(
                height: 10,
              ),

              // request Item Button In Button
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(
                    screenSize.width * 0.05,
                  ),
                  child: MyButton(
                    // text: "Request Item",
                    text: AppLocalizations.of(context)!.requestItem,
                    textColor: Theme.of(context).colorScheme.tertiary,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    onTap: () => {
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
