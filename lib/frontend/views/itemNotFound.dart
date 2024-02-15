// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:quotaserver/frontend/widgets/textfeild.dart';

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
              const Center(
                  // Logo will come
                  // child: Image.asset('assets/images/logo.png'), // Replace with your logo path
                  ),
              const SizedBox(
                height: 100,
              ),
              Center(
                child: Text(
                  "Item not Found",
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
                    "Sorry, the item you are looking for is not available at the moment, but if you would like us to notify you when one goes on sale, please provide the following information:",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
              MyTextFeild(
                hintText: 'Category',
                obsuretext: false,
                controller: _categoryController,
                icons: Icons.category,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                hintText: 'Brand',
                obsuretext: false,
                controller: _brandController,
                icons: Icons.account_circle,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                hintText: 'Model',
                obsuretext: false,
                controller: _modelController,
                icons: Icons.model_training_rounded,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                hintText: 'Budget US Dollar (USD)',
                obsuretext: false,
                controller: _budgetController,
                icons: Icons.money,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                hintText: 'When you need it',
                obsuretext: false,
                controller: _timeNeededController,
                icons: Icons.time_to_leave,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                hintText: 'Name',
                obsuretext: false,
                controller: _nameController,
                icons: Icons.account_circle,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFeild(
                hintText: 'City and Country',
                obsuretext: false,
                controller: _cityCountryController,
                icons: Icons.location_city_outlined,
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

              // request Item Button In Button
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(
                    screenSize.width * 0.05,
                  ),
                  child: MyButton(
                    text: "Request Item",
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
