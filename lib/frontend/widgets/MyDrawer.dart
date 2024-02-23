import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/frontend/screens/AdConfirmScreen.dart';
import 'package:quotaserver/frontend/screens/AdRejectScreen.dart';
import 'package:quotaserver/frontend/screens/AdReviewScreen.dart';
import 'package:quotaserver/frontend/screens/EditProfileScreen.dart';
import 'package:quotaserver/frontend/screens/FavouriteScreen.dart';
import 'package:quotaserver/frontend/screens/HomeScreen.dart';
import 'package:quotaserver/frontend/screens/ItemDetailScreen.dart';
import 'package:quotaserver/frontend/screens/ItemNotFoundScreen.dart';
import 'package:quotaserver/frontend/screens/NotificationPage.dart';
import 'package:quotaserver/frontend/screens/PaymentScreen.dart';
import 'package:quotaserver/frontend/screens/ProductAlertScreen.dart';
import 'package:quotaserver/frontend/screens/ProfileScreen.dart';
import 'package:quotaserver/frontend/screens/ReviewScreen.dart';
import 'package:quotaserver/frontend/screens/SellRegistrationScreen.dart';
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
        ],
      ),
    );
  }
}
