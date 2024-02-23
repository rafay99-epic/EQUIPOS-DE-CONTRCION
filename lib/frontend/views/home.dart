import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
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

class Home extends StatefulWidget {
  Home({super.key});
  final TextEditingController _searchItemController = TextEditingController();

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _location = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    // Calculate padding and margin based on screen size
    var padding = screenSize.width * 0.01; // 1% of screen width
    //icon box
    final List<IconBox> iconBoxes = <IconBox>[
      IconBox(
        icon: FontAwesomeIcons.screwdriverWrench,
        text: 'Asphalt',
        onTap: () {},
      ),
      IconBox(
        icon: FontAwesomeIcons.screwdriverWrench,
        text: 'Trucks and Trailers',
        onTap: () {},
      ),
      IconBox(
          icon: FontAwesomeIcons.screwdriverWrench,
          text: 'Concrete',
          onTap: () {}),
      IconBox(
          icon: FontAwesomeIcons.screwdriverWrench,
          text: 'Drilling',
          onTap: () {}),
      IconBox(
          icon: FontAwesomeIcons.screwdriverWrench,
          text: 'Earth Movement',
          onTap: () {}),
      IconBox(
          icon: FontAwesomeIcons.screwdriverWrench,
          text: 'Crushing',
          onTap: () {}),
      IconBox(
          icon: FontAwesomeIcons.screwdriverWrench,
          text: 'Parts',
          onTap: () {}),
      IconBox(
          icon: FontAwesomeIcons.screwdriverWrench,
          text: 'Accessories',
          onTap: () {}),
    ];

    //Image Boxes
    List<ImageBox> imageBoxes = <ImageBox>[
      ImageBox(
        imageUrl:
            'https://s3-alpha-sig.figma.com/img/0f32/1be1/d8c025f567bfb467b510552115d4dde9?Expires=1709510400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ild6o30heFXJn~M3SD67TktsbTYVbp~peKk1NPhJhXCZ53EkY2fLPoUjeY2Id8Rr-AeYtdaY7KTTPFfLXG36nugfk8oEwdt-xooqGGZgCoIa7ajzs~NKw5XALxNF4aCnnypHJMrAwqaaIz7yMG~uztPyJcdWrXMgjnb50aLqxuW1J4vdiRg9-hh0PIpK0z03svaTHxHpPwWSa51e9pEeUeUwfjzy2SXRgBo6YHkcjU7mpJyTJf0hCovnkQgbEtojzHN6tr7VK5wxqqa555~-nB26UQSASmEz-Z6KAPcB44kQn8-QOv3KJumuUp4IernRdZVYaclHGMkMZ4SQbd1Z~A__',
        price: ' 54,77,823.73',
        title: 'Lorem Ipsum',
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      ImageBox(
        imageUrl:
            'https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        price: ' 5,85,000',
        title: "Lorem Ipsum",
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      ImageBox(
        imageUrl:
            'https://s3-alpha-sig.figma.com/img/dceb/e237/2fbc5ffdb62911399d6d3b9fbf08a24e?Expires=1709510400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SZ4eEvf4y8Ej5DQfeAPTg~2KnhMmfscHUCRVJ5hYipa44tIza9DIdFqSwfMAT6i8otjcu1H95XIx2BLL4ptPwqar-bDRsTCI-etEAAHa71R8E7o9RkLqp0DzhoGIkuFsfEA~N6KxkMunGwtR4Z8Hbu0uv-JXOar6AeSdBaCEuFiMrSgmFSiloA6h~5wmY43QRi8jVHzMFE9CPOjvpSZQC3qHWHBmlUwDjzZ4EURGqcq7oFrBM3aVGM5Jfa2X3Fa6jVpSDLQkTY4OfjZg39OR0ABll~d8SoBiaPCo1-smaFr3f1D~294biizoQ8Nskf3n85D393CRL4GsEHNKb0b8Rw__',
        price: '300',
        title: "Car 03",
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      ImageBox(
        imageUrl:
            "https://s3-alpha-sig.figma.com/img/3d52/491b/87c9ec9faf0212109e6f35542b7c2365?Expires=1709510400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Uuaionf6IO1PzBgmVwH7U87Ox7hpxn1MOgo5PWCPOUFxPR~CxUYsP~HhmIiNP41304bzQ1PAmG1DRgm-WsCF~N22vrWBeV9j3NHsOdtX3FmDfWt6rer494RwZLrDwGfd5yvNxkF7x-wDaZNfkX6BTPbrAtNCQRCkm2vVVauTWVFIF3QBsl03RVH-4HGRNTNQgeD9PAdoXcgb0pGPl02uwOvgjSNP65VUJpeJe4mQvbJ8dp9PsH05FcIuzMn1KrfBjKaoE4Lzc0R-IniU8WEj1LrsHNgPxeOj6VqNspS9B4~aajOAmz0r6PGD10iOmW60ST1rExPPl05OIoigcMrp-A__",
        price: '300',
        title: "Car 03",
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
        headTitle: 'QuotaServ',
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
                      hintText: 'Search',
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
                  const MyTexxtStyle(
                    text: 'Category',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  GestureDetector(
                    child: const MyTexxtStyle(
                      text: 'See all',
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
                  const MyTexxtStyle(
                    text: 'Recommended',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  GestureDetector(
                    child: const MyTexxtStyle(
                      text: 'See all',
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
