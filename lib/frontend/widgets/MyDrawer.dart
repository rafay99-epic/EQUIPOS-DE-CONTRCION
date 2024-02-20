import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/frontend/screens/EditProfileScreen.dart';
import 'package:quotaserver/frontend/screens/HomeScreen.dart';
import 'package:quotaserver/frontend/screens/ItemDetailScreen.dart';
import 'package:quotaserver/frontend/screens/ItemNotFoundScreen.dart';
import 'package:quotaserver/frontend/screens/NotificationPage.dart';
import 'package:quotaserver/frontend/screens/PaymentScreen.dart';
import 'package:quotaserver/frontend/screens/ProfileScreen.dart';
import 'package:quotaserver/frontend/screens/ReviewScreen.dart';
import 'package:quotaserver/frontend/screens/SellRegistrationScreen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                "H O M E",
                style: GoogleFonts.playfairDisplay(
                  color: Theme.of(context).colorScheme.primary,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              leading: const Icon(Icons.home_rounded),
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
              leading: const Icon(Icons.home_rounded),
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
              leading: const Icon(Icons.home_rounded),
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
              leading: const Icon(Icons.home_rounded),
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
              leading: const Icon(Icons.home_rounded),
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
              leading: const Icon(Icons.home_rounded),
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
              leading: const Icon(Icons.home_rounded),
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
              leading: const Icon(Icons.home_rounded),
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
              leading: const Icon(Icons.home_rounded),
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
          )
        ],
      ),
    );
  }
}
