// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:quotaserver/constant/animation/animationFadeLeftToRight.dart';
// import 'package:quotaserver/frontend/screens/ItemDetailScreen.dart';
// import 'package:quotaserver/frontend/widgets/imagebox.dart';

// class favourite extends StatefulWidget {
//   const favourite({super.key});

//   @override
//   State<favourite> createState() => _favouriteState();
// }

// class _favouriteState extends State<favourite> {
//   @override
//   Widget build(BuildContext context) {
// //Image Boxes
//     List<ImageBox> imageBoxes = <ImageBox>[
//       ImageBox(
//         imageUrl: 'assets/images/image01.png',
//         price: ' 54,77,823.73',
//         title: 'Lorem Ipsum',
//         onTap: () {
//           Navigator.of(context).push(transitionToPage(
//             const ItemDetailScreen(),
//             durationMillis: 500,
//           ));
//         },
//       ),
//       ImageBox(
//         imageUrl: "assets/images/image02.png",
//         price: ' 5,85,000',
//         title: "Lorem Ipsum",
//         onTap: () {
//           Navigator.of(context).push(transitionToPage(
//             const ItemDetailScreen(),
//             durationMillis: 500,
//           ));
//         },
//       ),
//       ImageBox(
//         imageUrl: "assets/images/image03.png",
//         price: '300',
//         title: "Car 03",
//         onTap: () {
//           Navigator.of(context).push(transitionToPage(
//             const ItemDetailScreen(),
//             durationMillis: 500,
//           ));
//         },
//       ),
//       ImageBox(
//         imageUrl: "assets/images/image04.png",
//         price: '300',
//         title: "Car 03",
//         onTap: () {
//           Navigator.of(context).push(transitionToPage(
//             const ItemDetailScreen(),
//             durationMillis: 500,
//           ));
//         },
//       ),
//       // Add more ImageBox widgets as needed
//     ];
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 50,
//         title: Text(
//           'Favourite',
//           textAlign: TextAlign.left,
//           style: GoogleFonts.roboto(
//             color: Theme.of(context).colorScheme.primary,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           children: <Widget>[
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: GridView.builder(
//                   itemCount: imageBoxes.length,
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2, // 2 boxes per line
//                     crossAxisSpacing: 10, // Add some horizontal spacing
//                     mainAxisSpacing: 10, // Add some vertical spacing
//                   ),
//                   itemBuilder: (BuildContext context, int index) {
//                     return imageBoxes[index];
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/constant/animation/animationFadeLeftToRight.dart';
import 'package:quotaserver/frontend/screens/ItemDetailScreen.dart';
import 'package:quotaserver/frontend/widgets/imagebox.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Import this

class favourite extends StatefulWidget {
  const favourite({super.key});

  @override
  State<favourite> createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    //Image Boxes
    List<ImageBox> imageBoxes = <ImageBox>[
      ImageBox(
        imageUrl: 'assets/images/image01.png',
        price: ' 54,77,823.73',
        title: AppLocalizations.of(context)!.loremIpsum, // Use this
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      ImageBox(
        imageUrl: "assets/images/image02.png",
        price: ' 5,85,000',
        title: AppLocalizations.of(context)!.loremIpsum, // Use this
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      ImageBox(
        imageUrl: "assets/images/image03.png",
        price: '300',
        title: AppLocalizations.of(context)!.car03, // Use this
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      ImageBox(
        imageUrl: "assets/images/image04.png",
        price: '300',
        title: AppLocalizations.of(context)!.car03, // Use this
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      // Add more ImageBox widgets as needed
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: Text(
          AppLocalizations.of(context)!.favourite, // Use this
          textAlign: TextAlign.left,
          style: GoogleFonts.roboto(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridView.builder(
                  itemCount: imageBoxes.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 boxes per line
                    crossAxisSpacing: 10, // Add some horizontal spacing
                    mainAxisSpacing: 10, // Add some vertical spacing
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return imageBoxes[index];
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
