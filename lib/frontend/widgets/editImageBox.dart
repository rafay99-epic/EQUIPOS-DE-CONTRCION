import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageBoxEdit extends StatelessWidget {
  final String? imageUrl;
  final String? price;
  final String? title;
  final VoidCallback onTap;
  final VoidCallback onIcon1Tap;
  final VoidCallback onIcon2Tap;

  const ImageBoxEdit({
    Key? key,
    this.imageUrl,
    this.price,
    this.title,
    required this.onTap,
    required this.onIcon1Tap,
    required this.onIcon2Tap,
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
      child: SizedBox(
        width: boxWidth,
        height: boxHeight,
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
            Positioned(
                top: 5,
                left: 90,
                child: InkWell(
                  onTap: onIcon1Tap,
                  child: Container(
                    padding: const EdgeInsets.all(8), // Change as needed
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius:
                          BorderRadius.circular(50), // Change as needed
                    ),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                  ),
                )),
            Positioned(
              top: 5,
              left: 135,
              child: InkWell(
                onTap: onIcon1Tap,
                child: Container(
                  padding: const EdgeInsets.all(8), // Change as needed
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(50), // Change as needed
                  ),
                  child: const Icon(
                    Icons.delete,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
