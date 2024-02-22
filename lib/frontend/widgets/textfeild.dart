// import 'package:flutter/material.dart';

// class MyTextFeild extends StatelessWidget {
//   final String hintText;
//   final bool obsuretext;
//   final TextEditingController controller;
//   final IconData? icons;
//   final FocusNode? focusNode;
//   final bool onlyNumber;
//   final bool showIcon;
//   final bool showShadow;

//   const MyTextFeild({
//     Key? key,
//     required this.hintText,
//     required this.obsuretext,
//     required this.controller,
//     this.icons,
//     this.focusNode,
//     this.onlyNumber = false,
//     this.showIcon = true,
//     this.showShadow = true,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;

//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 25.0),
//       child: Container(
//         decoration: BoxDecoration(
//           boxShadow: showShadow
//               ? [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 5,
//                     blurRadius: 7,
//                     offset: const Offset(0, 3),
//                   ),
//                 ]
//               : [],
//         ),
//         child: TextField(
//           obscureText: obsuretext,
//           controller: controller,
//           focusNode: focusNode,
//           keyboardType: onlyNumber ? TextInputType.number : TextInputType.text,
//           style: TextStyle(fontSize: screenHeight * 0.02),
//           decoration: InputDecoration(
//             enabledBorder: const OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Colors.transparent,
//               ),
//             ),
//             focusedBorder: const OutlineInputBorder(
//               borderSide: BorderSide(
//                 color: Colors.transparent,
//               ),
//             ),
//             fillColor: Theme.of(context).colorScheme.tertiary,
//             filled: true,
//             hintText: hintText,
//             hintStyle: const TextStyle(
//               color: Color(0xFFA8AFB9),
//             ),
//             prefix: showIcon && icons != null
//                 ? Icon(icons, color: const Color(0xFFA8AFB9))
//                 : null, // Conditional rendering
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class MyTextFeild extends StatelessWidget {
  final String hintText;
  final bool obsuretext;
  final TextEditingController controller;
  final IconData? icons;
  final FocusNode? focusNode;
  final bool onlyNumber;
  final bool showIcon;
  final bool showShadow;

  const MyTextFeild({
    Key? key,
    required this.hintText,
    required this.obsuretext,
    required this.controller,
    this.icons,
    this.focusNode,
    this.onlyNumber = false,
    this.showIcon = false,
    this.showShadow = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (showIcon && icons == null) {
      throw FlutterError('If showIcon is true, you must provide an icon.');
    }

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: showShadow
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ]
              : [],
        ),
        child: TextField(
          obscureText: obsuretext,
          controller: controller,
          focusNode: focusNode,
          keyboardType: onlyNumber ? TextInputType.number : TextInputType.text,
          style: TextStyle(fontSize: screenHeight * 0.02),
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            fillColor: Theme.of(context).colorScheme.tertiary,
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xFFA8AFB9),
            ),
            prefixIcon:
                showIcon ? Icon(icons, color: const Color(0xFFA8AFB9)) : null,
          ),
        ),
      ),
    );
  }
}
