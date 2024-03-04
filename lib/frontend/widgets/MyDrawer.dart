import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/frontend/screens/AdConfirmScreen.dart';
import 'package:quotaserver/frontend/screens/AdRejectScreen.dart';
import 'package:quotaserver/frontend/screens/AdReviewScreen.dart';
import 'package:quotaserver/frontend/screens/ArticleRegistrationScreen.dart';
import 'package:quotaserver/frontend/screens/EditArticleRegistrationScreen.dart';
import 'package:quotaserver/frontend/screens/EditProfileScreen.dart';
import 'package:quotaserver/frontend/screens/FavouriteScreen.dart';
import 'package:quotaserver/frontend/screens/HomeScreen.dart';
import 'package:quotaserver/frontend/screens/ItemDetailScreen.dart';
import 'package:quotaserver/frontend/screens/ItemNotFoundScreen.dart';
import 'package:quotaserver/frontend/screens/MyAdScreen.dart';
import 'package:quotaserver/frontend/screens/NotificationPage.dart';
import 'package:quotaserver/frontend/screens/PaymentScreen.dart';
import 'package:quotaserver/frontend/screens/ProductAlertScreen.dart';
import 'package:quotaserver/frontend/screens/ProfileScreen.dart';
import 'package:quotaserver/frontend/screens/ReviewScreen.dart';
import 'package:quotaserver/frontend/screens/SellRegistrationScreen.dart';
import 'package:quotaserver/frontend/screens/itemDetailEditScreen.dart';
import 'package:quotaserver/frontend/widgets/productalertdialog.dart';
import 'package:quotaserver/frontend/widgets/updatedialog.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Home",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Item Prodyct Details",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ItemDetailScreen(),
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Review Quotes",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReviewScreen(),
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Item Not Found",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ItemNotFoundScreen(),
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Seller Resitration",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SellRegistrationScreen(),
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Notification",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationPage(),
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Edit profile",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditProfileScreen(),
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Payment",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentScreen(),
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "User profile",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileSceen(),
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Favorite",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavouriteScreen(),
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Ad Confirm",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdConfirmConfirmation(),
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Ad Reject",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdRejectScreen(),
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Product Alert",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductAlertScreen(),
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Product Alert Dialog Box",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const ProductAlertDialog();
                  },
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Ad Confirmation",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdReviewScreen(),
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Update Status",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const updateDialogbox();
                  },
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "My Ads",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyAdScreen(),
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Edit Product Detail",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ItemDetailEditScreen(),
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Edit Article Registration",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditArticleRegistrationScreen(),
                  ),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "Article Registration",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                //opening the Home Page by closing the drawer
                Navigator.pop(context),
                //Opening the Setting Page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ArticleRegistrationScreen(),
                  ),
                ),
              },
            ),
          ),
          // ListTile(
          //   title: Text(
          //     Get.locale == const Locale('en', 'US') ? 'English' : 'Spanish',
          //     style: GoogleFonts.playfairDisplay(
          //       color: Theme.of(context).colorScheme.primary,
          //     ),
          //   ),
          //   trailing: Switch(
          //     value: Get.locale == Locale('en', 'US'),
          //     onChanged: (bool value) {
          //       Locale newLocale =
          //           value ? Locale('en', 'US') : Locale('es', 'ES');
          //       Get.updateLocale(newLocale);
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
