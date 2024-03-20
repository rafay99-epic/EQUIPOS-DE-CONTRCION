// ignore_for_file: unnecessary_new, camel_case_types, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:quotaserver/frontend/widgets/appbar.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:quotaserver/frontend/widgets/textfeild.dart';
import 'package:quotaserver/frontend/widgets/textstyle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:image_picker/image_picker.dart';

class articleRegistration extends StatefulWidget {
  const articleRegistration({super.key});

  @override
  State<articleRegistration> createState() => _articleRegistrationState();
}

class _articleRegistrationState extends State<articleRegistration> {
  String? _radioValue; // stores current selected value
  String? dropdownValue1;
  String? dropdownValue2;
  File? _image;

  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (image != null) {
        _image = File(image.path);
      } else {
        print('No image selected.');
      }
    });
  }

  void _handleRadioValueChange(String? value) {
    setState(() {
      _radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final TextEditingController _titleController = new TextEditingController();

    final TextEditingController _cityAndCountryController =
        new TextEditingController();

    final TextEditingController _modelController = new TextEditingController();
    final TextEditingController _yearController = new TextEditingController();
    final TextEditingController _serialNumberController =
        new TextEditingController();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: MyAppBar(
        showTitle: false,
        textAlign: TextAlign.left,
        titleColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: MyTexxtStyle(
                  // text: 'Title',
                  text: AppLocalizations.of(context)!.title,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  textAlign: TextAlign.left,
                ),
              ),
              MyTextFeild(
                hintText: AppLocalizations.of(context)!.undercarriage,
                // hintText: "Undercarriage",
                obsuretext: false,
                controller: _titleController,
                showIcon: false,
                showShadow: false,
                onlyNumber: false,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  MyTexxtStyle(
                    text: AppLocalizations.of(context)!.condition,
                    // text: "Condition",
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  MyTexxtStyle(
                    // text: "City and Country",
                    text: AppLocalizations.of(context)!.cityAndCountry,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: <Widget>[
                  Radio<String>(
                    // value: 'New',
                    value: AppLocalizations.of(context)!.newtag,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                  Text(AppLocalizations.of(context)!.newtag),
                  Radio<String>(
                    // value: 'Used',
                    value: AppLocalizations.of(context)!.used,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                  Text(AppLocalizations.of(context)!.used),
                  Expanded(
                    child: MyTextFeild(
                      hintText: AppLocalizations.of(context)!.cityAndCountry,
                      obsuretext: false,
                      controller: _cityAndCountryController,
                      showIcon: false,
                      showShadow: false,
                      onlyNumber: false,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //category and Model text
              Row(
                children: <Widget>[
                  MyTexxtStyle(
                    // text: "Category",
                    text: AppLocalizations.of(context)!.category,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  MyTexxtStyle(
                    // text: "Marca",
                    text: AppLocalizations.of(context)!.model,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      hint: Text(AppLocalizations.of(context)!.selectCategory),
                      value: dropdownValue1,
                      icon: const Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                      underline: Container(
                        height: 0,
                        color: Colors.black,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue1 = newValue;
                        });
                      },
                      items: <String>[
                        AppLocalizations.of(context)!.one,
                        AppLocalizations.of(context)!.two,
                        AppLocalizations.of(context)!.three,
                        AppLocalizations.of(context)!.four
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      hint: Text(
                        AppLocalizations.of(context)!.selectMarca,
                      ),
                      value: dropdownValue2,
                      icon: const Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                      underline: Container(
                        height: 0,
                        color: Colors.black,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue2 = newValue;
                        });
                      },
                      items: <String>[
                        AppLocalizations.of(context)!.one,
                        AppLocalizations.of(context)!.two,
                        AppLocalizations.of(context)!.three,
                        AppLocalizations.of(context)!.four
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              //Model text
              Align(
                alignment: Alignment.centerLeft,
                child: MyTexxtStyle(
                  // text: 'Model',
                  text: AppLocalizations.of(context)!.model,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  textAlign: TextAlign.left,
                ),
              ),
              //Model text field
              MyTextFeild(
                hintText: AppLocalizations.of(context)!.model,
                obsuretext: false,
                controller: _modelController,
                showIcon: false,
                showShadow: false,
                onlyNumber: false,
              ),
              const SizedBox(
                height: 10,
              ),
              //serial Number & Year
              Row(
                children: <Widget>[
                  MyTexxtStyle(
                    // text: "Serial Number",
                    text: AppLocalizations.of(context)!.serialNumber,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  MyTexxtStyle(
                    // text: "Year",
                    text: AppLocalizations.of(context)!.year,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ],
              ),
              //text feild for Serial Number and year
              Row(
                children: <Widget>[
                  Expanded(
                    child: MyTextFeild(
                      hintText: AppLocalizations.of(context)!.serialNumber,
                      obsuretext: false,
                      controller: _serialNumberController,
                      showIcon: false,
                      showShadow: false,
                      onlyNumber: false,
                    ),
                  ),
                  Expanded(
                    child: MyTextFeild(
                      // hintText: "Year ",
                      hintText: AppLocalizations.of(context)!.year,
                      obsuretext: false,
                      controller: _yearController,
                      showIcon: false,
                      showShadow: false,
                      onlyNumber: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //text for condition
              Align(
                alignment: Alignment.centerLeft,
                child: MyTexxtStyle(
                  text: AppLocalizations.of(context)!.condition,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  textAlign: TextAlign.left,
                ),
              ),
              MyTextFeild(
                hintText: AppLocalizations.of(context)!.condition,
                // hintText: "Condition",
                obsuretext: false,
                controller: _modelController,
                showIcon: false,
                showShadow: false,
                onlyNumber: false,
              ),
              const SizedBox(
                height: 10,
              ),
              // test and test feild for Precio
              Align(
                alignment: Alignment.centerLeft,
                child: MyTexxtStyle(
                  // text: 'Percio',
                  text: AppLocalizations.of(context)!.precio,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  textAlign: TextAlign.left,
                ),
              ),
              MyTextFeild(
                hintText: AppLocalizations.of(context)!.precio,
                obsuretext: false,
                controller: _modelController,
                showIcon: false,
                showShadow: false,
                onlyNumber: false,
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: MyTexxtStyle(
                  text: AppLocalizations.of(context)!.notes,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextFeild(
                // hintText: "Notes ",
                hintText: AppLocalizations.of(context)!.notes,
                obsuretext: false,
                controller: _modelController,
                showIcon: false,
                showShadow: false,
                onlyNumber: false,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: getImage,
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    MyTexxtStyle(
                      // text: "Upload Images/Video",
                      text: AppLocalizations.of(context)!.uploadImagesVideo,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                child: _image == null
                    ? const MyTexxtStyle(
                        text: 'Update an Image fore Preview.',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        textAlign: TextAlign.center,
                      )
                    : Image.file(_image!),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(
                    screenSize.width * 0.05,
                  ), // Adjust the padding as needed
                  child: MyButton(
                    // text: "Article Registration",
                    text: AppLocalizations.of(context)!.articleRegistration,
                    textColor: Theme.of(context).colorScheme.tertiary,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    onTap: () => {
                      //logic for article registration
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
