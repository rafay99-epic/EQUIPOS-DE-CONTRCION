// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageBox extends StatelessWidget {
  final String? imageUrl;
  final String? price;
  final String? title;
  final VoidCallback onTap;

  const ImageBox({
    Key? key,
    this.imageUrl,
    this.price,
    this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double boxWidth = screenWidth *
        (176 / 360); // Assuming 360 is the width of the design screen
    double boxHeight = screenHeight *
        (173 / 640); // Assuming 640 is the height of the design screen

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: boxWidth,
        height: boxHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Expanded(
            //   child: imageUrl != null
            //       ? Image.asset(
            //           imageUrl!,
            //           fit: BoxFit.cover,
            //           errorBuilder: (context, error, stackTrace) {
            //             return Text('Error loading image');
            //           },
            //         )
            //       : Container(),
            // ),
            Expanded(
              child: imageUrl != null
                  ? imageUrl!.startsWith('http')
                      ? Image.network(
                          imageUrl!,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Text('Error loading image');
                          },
                        )
                      : Image.asset(
                          imageUrl!,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Text('Error loading image');
                          },
                        )
                  : Container(),
            ),
            Text(
              title ?? '',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Text(
              'Rs${price ?? ''}',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
