// import 'package:flutter/material.dart';
// import 'package:quotaserver/constant/animation/animationFadeLeftToRight.dart';
// import 'package:quotaserver/frontend/screens/ItemDetailScreen.dart';
// import 'package:quotaserver/frontend/widgets/editImageBox.dart';
// import 'package:quotaserver/frontend/widgets/textstyle.dart';

// class myads extends StatefulWidget {
//   const myads({super.key});

//   @override
//   State<myads> createState() => _myadsState();
// }

// class _myadsState extends State<myads> {
//   @override
//   Widget build(BuildContext context) {
//     List<ImageBoxEdit> imageBoxes = <ImageBoxEdit>[
//       ImageBoxEdit(
//         imageUrl: "assets/images/image05.png",
//         price: ' 54,77,823.73',
//         title: 'Lorem Ipsum',
//         onTap: () {
//           Navigator.of(context).push(transitionToPage(
//             const ItemDetailScreen(),
//             durationMillis: 500,
//           ));
//         },
//         onIcon1Tap: () {},
//         onIcon2Tap: () {},
//       ),
//       ImageBoxEdit(
//         imageUrl: "assets/images/image02.png",
//         price: ' 5,85,000',
//         title: "Lorem Ipsum",
//         onTap: () {
//           Navigator.of(context).push(transitionToPage(
//             const ItemDetailScreen(),
//             durationMillis: 500,
//           ));
//         },
//         onIcon1Tap: () {},
//         onIcon2Tap: () {},
//       ),
//       ImageBoxEdit(
//         imageUrl: "assets/images/image02.png",
//         price: '300',
//         title: "Car 03",
//         onTap: () {
//           Navigator.of(context).push(transitionToPage(
//             const ItemDetailScreen(),
//             durationMillis: 500,
//           ));
//         },
//         onIcon1Tap: () {},
//         onIcon2Tap: () {},
//       ),

//       // Add more ImageBox widgets as needed
//     ];

//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           const Padding(
//             padding: EdgeInsets.only(left: 20.0),
//             child: Align(
//               alignment: Alignment.centerLeft,
//               child: MyTexxtStyle(
//                 text: "My Ads",
//                 fontSize: 22,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.black,
//                 textAlign: TextAlign.left,
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: GridView.builder(
//                 itemCount: imageBoxes.length,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2, // 2 boxes per line
//                   crossAxisSpacing: 10, // Add some horizontal spacing
//                   mainAxisSpacing: 10, // Add some vertical spacing
//                 ),
//                 itemBuilder: (BuildContext context, int index) {
//                   return imageBoxes[index];
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:quotaserver/constant/animation/animationFadeLeftToRight.dart';
import 'package:quotaserver/frontend/screens/ItemDetailScreen.dart';
import 'package:quotaserver/frontend/widgets/editImageBox.dart';
import 'package:quotaserver/frontend/widgets/textstyle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Import this

class myads extends StatefulWidget {
  const myads({super.key});

  @override
  State<myads> createState() => _myadsState();
}

class _myadsState extends State<myads> {
  @override
  Widget build(BuildContext context) {
    List<ImageBoxEdit> imageBoxes = <ImageBoxEdit>[
      ImageBoxEdit(
        imageUrl: "assets/images/image05.png",
        price: ' 54,77,823.73',
        title: AppLocalizations.of(context)!.loremIpsum,
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
        onIcon1Tap: () {},
        onIcon2Tap: () {},
      ),
      ImageBoxEdit(
        imageUrl: "assets/images/image02.png",
        price: ' 5,85,000',
        title: AppLocalizations.of(context)!.loremIpsum,
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
        onIcon1Tap: () {},
        onIcon2Tap: () {},
      ),
      ImageBoxEdit(
        imageUrl: "assets/images/image02.png",
        price: '300',
        title: AppLocalizations.of(context)!.car03,
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
        onIcon1Tap: () {},
        onIcon2Tap: () {},
      ),

      // Add more ImageBox widgets as needed
    ];

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: MyTexxtStyle(
                text: AppLocalizations.of(context)!.myads,
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
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
    );
  }
}
