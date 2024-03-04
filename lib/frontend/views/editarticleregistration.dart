// ignore_for_file: camel_case_types, unnecessary_new, no_leading_underscores_for_local_identifiers

// import 'package:flutter/material.dart';
// import 'package:quotaserver/frontend/widgets/appbar.dart';
// import 'package:quotaserver/frontend/widgets/myButton.dart';
// import 'package:quotaserver/frontend/widgets/textfeild.dart';
// import 'package:quotaserver/frontend/widgets/textstyle.dart';

// class editArticleRegistration extends StatefulWidget {
//   const editArticleRegistration({super.key});

//   @override
//   State<editArticleRegistration> createState() =>
//       _ediArticletRegistrationState();
// }

// class _ediArticletRegistrationState extends State<editArticleRegistration> {
//   String? _radioValue; // stores current selected value
//   String? dropdownValue1;
//   String? dropdownValue2;

//   void _handleRadioValueChange(String? value) {
//     setState(() {
//       _radioValue = value;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     final TextEditingController _titleController = new TextEditingController();

//     final TextEditingController _cityAndCountryController =
//         new TextEditingController();

//     final TextEditingController _modelController = new TextEditingController();
//     final TextEditingController _yearController = new TextEditingController();
//     final TextEditingController _serialNumberController =
//         new TextEditingController();

//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.background,
//       appBar: MyAppBar(
//         headTitle: 'Edit Article Registration',
//         textAlign: TextAlign.left,
//         titleColor: Theme.of(context).colorScheme.primary,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(
//             left: 15,
//             right: 15,
//           ),
//           child: Column(
//             children: <Widget>[
//               const SizedBox(
//                 height: 20,
//               ),
//               const Align(
//                 alignment: Alignment.centerLeft,
//                 child: MyTexxtStyle(
//                   text: 'Title',
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//               MyTextFeild(
//                 hintText: "Undercarriage",
//                 obsuretext: false,
//                 controller: _titleController,
//                 showIcon: false,
//                 showShadow: false,
//                 onlyNumber: false,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Row(
//                 children: <Widget>[
//                   MyTexxtStyle(
//                     text: "Condition",
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                   ),
//                   SizedBox(
//                     width: 80,
//                   ),
//                   MyTexxtStyle(
//                     text: "City and Country",
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 5,
//               ),
//               Row(
//                 children: <Widget>[
//                   Radio<String>(
//                     value: 'New',
//                     groupValue: _radioValue,
//                     onChanged: _handleRadioValueChange,
//                   ),
//                   const Text('New'),
//                   Radio<String>(
//                     value: 'Used',
//                     groupValue: _radioValue,
//                     onChanged: _handleRadioValueChange,
//                   ),
//                   const Text('Used'),
//                   Expanded(
//                     child: MyTextFeild(
//                       hintText: "City and Country",
//                       obsuretext: false,
//                       controller: _cityAndCountryController,
//                       showIcon: false,
//                       showShadow: false,
//                       onlyNumber: false,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               //category and Model text
//               const Row(
//                 children: <Widget>[
//                   MyTexxtStyle(
//                     text: "Category",
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                   ),
//                   SizedBox(
//                     width: 80,
//                   ),
//                   MyTexxtStyle(
//                     text: "Marca",
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 children: <Widget>[
//                   Expanded(
//                     child: DropdownButton<String>(
//                       isExpanded:
//                           true, // add this line to move the arrow to the right
//                       hint: const Text(
//                           'Select Category'), // add this line to show hint text
//                       value: dropdownValue1,
//                       icon: const Icon(Icons.arrow_downward),
//                       iconSize: 24,
//                       elevation: 16,
//                       style: const TextStyle(color: Colors.black),
//                       underline: Container(
//                         height: 0,
//                         color: Colors.black,
//                       ),
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           dropdownValue1 = newValue;
//                         });
//                       },
//                       items: <String>['One', 'Two', 'Three', 'Four']
//                           .map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                     ),
//                   ),
//                   const SizedBox(
//                       width: 10), // add some space between the dropdowns
//                   Expanded(
//                     child: DropdownButton<String>(
//                       isExpanded:
//                           true, // add this line to move the arrow to the right
//                       hint: const Text(
//                         'Select Marca',
//                       ), // add this line to show hint text
//                       value: dropdownValue2,
//                       icon: const Icon(Icons.arrow_downward),
//                       iconSize: 24,
//                       elevation: 16,
//                       style: const TextStyle(color: Colors.black),
//                       underline: Container(
//                         height: 0,
//                         color: Colors.black,
//                       ),
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           dropdownValue2 = newValue;
//                         });
//                       },
//                       items: <String>['One', 'Two', 'Three', 'Four']
//                           .map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 10,
//               ),

//               //Model text
//               const Align(
//                 alignment: Alignment.centerLeft,
//                 child: MyTexxtStyle(
//                   text: 'Model',
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//               //Model text field
//               MyTextFeild(
//                 hintText: "Model",
//                 obsuretext: false,
//                 controller: _modelController,
//                 showIcon: false,
//                 showShadow: false,
//                 onlyNumber: false,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               //serial Number & Year
//               const Row(
//                 children: <Widget>[
//                   MyTexxtStyle(
//                     text: "Serial Number",
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                   ),
//                   SizedBox(
//                     width: 80,
//                   ),
//                   MyTexxtStyle(
//                     text: "Year",
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16,
//                   ),
//                 ],
//               ),
//               //text feild for Serial Number and year
//               Row(
//                 children: <Widget>[
//                   Expanded(
//                     child: MyTextFeild(
//                       hintText: "Serial Number",
//                       obsuretext: false,
//                       controller: _serialNumberController,
//                       showIcon: false,
//                       showShadow: false,
//                       onlyNumber: false,
//                     ),
//                   ),
//                   Expanded(
//                     child: MyTextFeild(
//                       hintText: "Year ",
//                       obsuretext: false,
//                       controller: _yearController,
//                       showIcon: false,
//                       showShadow: false,
//                       onlyNumber: true,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               //text for condition
//               const Align(
//                 alignment: Alignment.centerLeft,
//                 child: MyTexxtStyle(
//                   text: 'Condition',
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//               MyTextFeild(
//                 hintText: "Condition",
//                 obsuretext: false,
//                 controller: _modelController,
//                 showIcon: false,
//                 showShadow: false,
//                 onlyNumber: false,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               // test and test feild for Precio
//               const Align(
//                 alignment: Alignment.centerLeft,
//                 child: MyTexxtStyle(
//                   text: 'Percio',
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//               MyTextFeild(
//                 hintText: "Percio ",
//                 obsuretext: false,
//                 controller: _modelController,
//                 showIcon: false,
//                 showShadow: false,
//                 onlyNumber: false,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Align(
//                 alignment: Alignment.centerLeft,
//                 child: MyTexxtStyle(
//                   text: 'Notes',
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               MyTextFeild(
//                 hintText: "Notes ",
//                 obsuretext: false,
//                 controller: _modelController,
//                 showIcon: false,
//                 showShadow: false,
//                 onlyNumber: false,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               InkWell(
//                 onTap: () {
//                   //Logic for Uploading the file
//                 },
//                 child: const Row(
//                   children: <Widget>[
//                     Icon(
//                       Icons.camera_alt_rounded,
//                       color: Colors.black,
//                     ),
//                     SizedBox(width: 10),
//                     MyTexxtStyle(
//                       text: "Upload Images/Video",
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               SizedBox(
//                 width: double.infinity,
//                 child: Padding(
//                   padding: EdgeInsets.all(
//                     screenSize.width * 0.05,
//                   ), // Adjust the padding as needed
//                   child: MyButton(
//                     text: "Article Registration",
//                     textColor: Theme.of(context).colorScheme.tertiary,
//                     backgroundColor: Theme.of(context).colorScheme.secondary,
//                     onTap: () => {
//                       //logic for article registration
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

import 'package:flutter/material.dart';
import 'package:quotaserver/frontend/widgets/appbar.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:quotaserver/frontend/widgets/textfeild.dart';
import 'package:quotaserver/frontend/widgets/textstyle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Import this

class editArticleRegistration extends StatefulWidget {
  const editArticleRegistration({super.key});

  @override
  State<editArticleRegistration> createState() =>
      _ediArticletRegistrationState();
}

class _ediArticletRegistrationState extends State<editArticleRegistration> {
  String? _radioValue; // stores current selected value
  String? dropdownValue1;
  String? dropdownValue2;

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
        headTitle:
            AppLocalizations.of(context)!.editArticleRegistration, // Use this
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
                  text: AppLocalizations.of(context)!.title, // Use this
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  textAlign: TextAlign.left,
                ),
              ),
              MyTextFeild(
                hintText:
                    AppLocalizations.of(context)!.undercarriage, // Use this
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
                    text: AppLocalizations.of(context)!.condition, // Use this
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  MyTexxtStyle(
                    text: AppLocalizations.of(context)!
                        .cityAndCountry, // Use this
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
                  Text(AppLocalizations.of(context)!.newtag), // Use this
                  Radio<String>(
                    value: AppLocalizations.of(context)!.used,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                  Text(AppLocalizations.of(context)!.used), // Use this
                  Expanded(
                    child: MyTextFeild(
                      hintText: AppLocalizations.of(context)!
                          .cityAndCountry, // Use this
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
                    text: AppLocalizations.of(context)!.category, // Use this
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  MyTexxtStyle(
                    text: AppLocalizations.of(context)!.marca, // Use this
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
                      isExpanded:
                          true, // add this line to move the arrow to the right
                      hint: Text(AppLocalizations.of(context)!
                          .selectCategory), // Use this
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
                  const SizedBox(
                      width: 10), // add some space between the dropdowns
                  Expanded(
                    child: DropdownButton<String>(
                      isExpanded:
                          true, // add this line to move the arrow to the right
                      hint: Text(
                        AppLocalizations.of(context)!.selectMarca, // Use this
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
                  text: AppLocalizations.of(context)!.model, // Use this
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  textAlign: TextAlign.left,
                ),
              ),
              //Model text field
              MyTextFeild(
                hintText: AppLocalizations.of(context)!.model, // Use this
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
                    text:
                        AppLocalizations.of(context)!.serialNumber, // Use this
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  MyTexxtStyle(
                    text: AppLocalizations.of(context)!.year, // Use this
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
                      hintText: AppLocalizations.of(context)!
                          .serialNumber, // Use this
                      obsuretext: false,
                      controller: _serialNumberController,
                      showIcon: false,
                      showShadow: false,
                      onlyNumber: false,
                    ),
                  ),
                  Expanded(
                    child: MyTextFeild(
                      hintText: AppLocalizations.of(context)!.year, // Use this
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
                  text: AppLocalizations.of(context)!.condition, // Use this
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  textAlign: TextAlign.left,
                ),
              ),
              MyTextFeild(
                hintText: AppLocalizations.of(context)!.condition, // Use this
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
                  text: AppLocalizations.of(context)!.precio, // Use this
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  textAlign: TextAlign.left,
                ),
              ),
              MyTextFeild(
                hintText: AppLocalizations.of(context)!.precio, // Use this
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
                  text: AppLocalizations.of(context)!.notes, // Use this
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextFeild(
                hintText: AppLocalizations.of(context)!.notes, // Use this
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
                onTap: () {
                  //Logic for Uploading the file
                },
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    MyTexxtStyle(
                      text: AppLocalizations.of(context)!
                          .uploadImagesVideo, // Use this
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
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
                    text: AppLocalizations.of(context)!
                        .articleRegistration, // Use this
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
