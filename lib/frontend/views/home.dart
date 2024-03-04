// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:quotaserver/constant/animation/animationFadeLeftToRight.dart';
// import 'package:quotaserver/frontend/screens/ItemDetailScreen.dart';
// import 'package:quotaserver/frontend/screens/NotificationPage.dart';
// import 'package:quotaserver/frontend/widgets/MyDrawer.dart';
// import 'package:quotaserver/frontend/widgets/appbar.dart';
// import 'package:quotaserver/frontend/widgets/filter_dialog.dart';
// import 'package:quotaserver/frontend/widgets/iconBox.dart';
// import 'package:quotaserver/frontend/widgets/imagebox.dart';
// import 'package:quotaserver/frontend/widgets/textfeild.dart';
// import 'package:quotaserver/frontend/widgets/textstyle.dart';

// class Home extends StatefulWidget {
//   Home({super.key});
//   final TextEditingController _searchItemController = TextEditingController();

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     //icon box
//     final List<IconBox> iconBoxes = <IconBox>[
//       IconBox(
//         icon: FontAwesomeIcons.screwdriverWrench,
//         text: 'Asphalt',
//         onTap: () {},
//       ),
//       IconBox(
//         icon: FontAwesomeIcons.screwdriverWrench,
//         text: 'Trucks and Trailers',
//         onTap: () {},
//       ),
//       IconBox(
//           icon: FontAwesomeIcons.screwdriverWrench,
//           text: 'Concrete',
//           onTap: () {}),
//       IconBox(
//           icon: FontAwesomeIcons.screwdriverWrench,
//           text: 'Drilling',
//           onTap: () {}),
//       IconBox(
//           icon: FontAwesomeIcons.screwdriverWrench,
//           text: 'Earth Movement',
//           onTap: () {}),
//       IconBox(
//           icon: FontAwesomeIcons.screwdriverWrench,
//           text: 'Crushing',
//           onTap: () {}),
//       IconBox(
//           icon: FontAwesomeIcons.screwdriverWrench,
//           text: 'Parts',
//           onTap: () {}),
//       IconBox(
//           icon: FontAwesomeIcons.screwdriverWrench,
//           text: 'Accessories',
//           onTap: () {}),
//     ];

//     //Image Boxes
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
//       backgroundColor: Theme.of(context).colorScheme.background,
//       appBar: MyAppBar(
//         headTitle: 'EQUIPOS DE CONTRCION',
//         titleColor: Theme.of(context).colorScheme.secondary,
//         showActionIcon: true,
//         showTitle: true,
//         actionIcon: Icons.notifications,
//         onActionIconPressed: () {
//           Navigator.of(context).push(
//             transitionToPage(
//               const NotificationPage(),
//               durationMillis: 500,
//             ),
//           );
//         },
//       ),
//       drawer: const MyDrawer(),
//       body: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           children: <Widget>[
//             Container(
//               margin: const EdgeInsets.only(top: 20),
//               child: Row(
//                 children: <Widget>[
//                   Expanded(
//                     child: MyTextFeild(
//                       hintText: 'Search',
//                       obsuretext: false,
//                       icons: Icons.search,
//                       controller: widget._searchItemController,
//                     ),
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.filter_list),
//                     onPressed: () {
//                       showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return const MyFilterDialogBox();
//                         },
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   const MyTexxtStyle(
//                     text: 'Category',
//                     fontSize: 20,
//                     fontWeight: FontWeight.w500,
//                   ),
//                   GestureDetector(
//                     child: const MyTexxtStyle(
//                       text: 'See all',
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.grey,
//                     ),
//                     onTap: () {
//                       //Redirect to the category page
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             // Category in small Box, icon and text
//             Padding(
//               padding: const EdgeInsets.all(8),
//               child: GridView.builder(
//                 shrinkWrap: true,
//                 itemCount: iconBoxes.length,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 4, // 4 boxes per line
//                   crossAxisSpacing: 6, // Add some horizontal spacing
//                   mainAxisSpacing: 26, // Add some vertical spacing
//                 ),
//                 itemBuilder: (BuildContext context, int index) {
//                   return Padding(
//                     padding: const EdgeInsets.only(bottom: 0),
//                     child: iconBoxes[index],
//                   );
//                 },
//               ),
//             ),
//             //Recommended Text with See all
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   const MyTexxtStyle(
//                     text: 'Recommended',
//                     fontSize: 20,
//                     fontWeight: FontWeight.w500,
//                   ),
//                   GestureDetector(
//                     child: const MyTexxtStyle(
//                       text: 'See all',
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.grey,
//                     ),
//                     onTap: () {
//                       //Redirect to the category page
//                     },
//                   ),
//                 ],
//               ),
//             ),

//             // Recommended in small Box, Images  and text & Price Tag
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

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quotaserver/constant/animation/animationFadeLeftToRight.dart';
import 'package:quotaserver/frontend/screens/ItemDetailScreen.dart';
import 'package:quotaserver/frontend/screens/NotificationPage.dart';
import 'package:quotaserver/frontend/widgets/MyDrawer.dart';
import 'package:quotaserver/frontend/widgets/appbar.dart';
import 'package:quotaserver/frontend/widgets/filter_dialog.dart';
import 'package:quotaserver/frontend/widgets/iconBox.dart';
import 'package:quotaserver/frontend/widgets/imagebox.dart';
import 'package:quotaserver/frontend/widgets/textfeild.dart';
import 'package:quotaserver/frontend/widgets/textstyle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Import this

class Home extends StatefulWidget {
  Home({super.key});
  final TextEditingController _searchItemController = TextEditingController();

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //icon box
    final List<IconBox> iconBoxes = <IconBox>[
      IconBox(
        icon: FontAwesomeIcons.screwdriverWrench,
        text: AppLocalizations.of(context)!.asphalt, // Use this
        onTap: () {},
      ),
      IconBox(
        icon: FontAwesomeIcons.screwdriverWrench,
        text: AppLocalizations.of(context)!.trucksAndTrailers, // Use this
        onTap: () {},
      ),
      IconBox(
          icon: FontAwesomeIcons.screwdriverWrench,
          text: AppLocalizations.of(context)!.concrete, // Use this
          onTap: () {}),
      IconBox(
          icon: FontAwesomeIcons.screwdriverWrench,
          text: AppLocalizations.of(context)!.drilling, // Use this
          onTap: () {}),
      IconBox(
          icon: FontAwesomeIcons.screwdriverWrench,
          text: AppLocalizations.of(context)!.earthMovement, // Use this
          onTap: () {}),
      IconBox(
          icon: FontAwesomeIcons.screwdriverWrench,
          text: AppLocalizations.of(context)!.crushing, // Use this
          onTap: () {}),
      IconBox(
          icon: FontAwesomeIcons.screwdriverWrench,
          text: AppLocalizations.of(context)!.parts, // Use this
          onTap: () {}),
      IconBox(
          icon: FontAwesomeIcons.screwdriverWrench,
          text: AppLocalizations.of(context)!.accessories, // Use this
          onTap: () {}),
    ];

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
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: MyAppBar(
        headTitle:
            AppLocalizations.of(context)!.equiposDeContracion, // Use this
        titleColor: Theme.of(context).colorScheme.secondary,
        showActionIcon: true,
        showTitle: true,
        actionIcon: Icons.notifications,
        onActionIconPressed: () {
          Navigator.of(context).push(
            transitionToPage(
              const NotificationPage(),
              durationMillis: 500,
            ),
          );
        },
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MyTextFeild(
                      hintText:
                          AppLocalizations.of(context)!.search, // Use this
                      obsuretext: false,
                      icons: Icons.search,
                      controller: widget._searchItemController,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.filter_list),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const MyFilterDialogBox();
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MyTexxtStyle(
                    text: AppLocalizations.of(context)!.category, // Use this
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  GestureDetector(
                    child: MyTexxtStyle(
                      text: AppLocalizations.of(context)!.seeAll, // Use this
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      //Redirect to the category page
                    },
                  ),
                ],
              ),
            ),
            // Category in small Box, icon and text
            Padding(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: iconBoxes.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // 4 boxes per line
                  crossAxisSpacing: 6, // Add some horizontal spacing
                  mainAxisSpacing: 26, // Add some vertical spacing
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: iconBoxes[index],
                  );
                },
              ),
            ),
            //Recommended Text with See all
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MyTexxtStyle(
                    text: AppLocalizations.of(context)!.recommended, // Use this
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  GestureDetector(
                    child: MyTexxtStyle(
                      text: AppLocalizations.of(context)!.seeAll, // Use this
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      //Redirect to the category page
                    },
                  ),
                ],
              ),
            ),

            // Recommended in small Box, Images  and text & Price Tag
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
