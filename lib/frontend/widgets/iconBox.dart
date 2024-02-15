import 'package:flutter/material.dart';
import 'package:quotaserver/frontend/widgets/textstyle.dart';

class IconBox extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const IconBox({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 200, 36, 900), // Yellow background
            ),
            child: Icon(
              icon,
              size: 24.0, // Set the icon size
              color: Colors.black, // Set the icon color
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Flexible(
            child: MyTexxtStyle(
              text: text,
              fontSize: 12,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
