import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quotaserver/constant/animation/animationFadeLeftToRight.dart';
import 'package:quotaserver/frontend/screens/ItemDetailScreen.dart';
import 'package:quotaserver/frontend/screens/NotificationPage.dart';
import 'package:quotaserver/frontend/widgets/MyDrawer.dart';
import 'package:quotaserver/frontend/widgets/appbar.dart';
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
  @override
  Widget build(BuildContext context) {
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
            'https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        price: '100',
        title: 'car 01',
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
        price: '200',
        title: "Car 02",
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      ImageBox(
        imageUrl:
            'https://images.unsplash.com/photo-1503376780353-7e6692767b70?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
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
                      //search Box with filter pop up
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
