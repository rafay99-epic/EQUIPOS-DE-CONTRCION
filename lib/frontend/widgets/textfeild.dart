import 'package:flutter/material.dart';

class MyTextFeild extends StatelessWidget {
  final String hintText;
  final bool obsuretext;
  final TextEditingController controller;
  final IconData icons;
  final FocusNode? focusNode;

  const MyTextFeild({
    Key? key,
    required this.hintText,
    required this.obsuretext,
    required this.controller,
    required this.icons,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: TextField(
          obscureText: obsuretext,
          controller: controller,
          focusNode: focusNode,
          style:
              TextStyle(fontSize: screenHeight * 0.02), // 2% of screen height
          decoration: InputDecoration(
            //this is the enable the Text Feild color and design
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            // Focus style
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            //filling information style
            fillColor: Theme.of(context).colorScheme.tertiary,
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xFFA8AFB9),
            ),
            prefixIcon: Icon(
              icons,
              color: Color(0xFFA8AFB9),
            ),
          ),
        ),
      ),
    );
  }
}
