import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quotaserver/backend/provider/provider.dart';
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

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  Widget buildListTile(String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ListTile(
        title: Text(
          title,
          style: GoogleFonts.playfairDisplay(
            color: Theme.of(context).colorScheme.primary,
            // fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: ListView(
        children: [
          buildListTile("Home", const HomePage()),
          buildListTile("Item Product Details", const ItemDetailScreen()),
          buildListTile("Review Quotes", const ReviewScreen()),
          buildListTile("Item Not Found", const ItemNotFoundScreen()),
          buildListTile("Seller Registration", const SellRegistrationScreen()),
          buildListTile("Notification", const NotificationPage()),
          buildListTile("Edit profile", const EditProfileScreen()),
          buildListTile("Payment", const PaymentScreen()),
          buildListTile("User profile", const ProfileSceen()),
          buildListTile("Favorite", const FavouriteScreen()),
          buildListTile("Ad Confirm", const AdConfirmConfirmation()),
          buildListTile("Ad Reject", const AdRejectScreen()),
          buildListTile("Product Alert", const ProductAlertScreen()),
          buildListTile("Product Alert Dialog Box", const ProductAlertDialog()),
          buildListTile("Ad Confirmation", const AdReviewScreen()),
          buildListTile("Update Status", const updateDialogbox()),
          buildListTile("My Ads", const MyAdScreen()),
          buildListTile("Edit Product Detail", const ItemDetailEditScreen()),
          buildListTile("Edit Article Registration",
              const EditArticleRegistrationScreen()),
          buildListTile(
              "Article Registration", const ArticleRegistrationScreen()),
          ListTile(
            title: const Text('Switch Language'),
            trailing: Switch(
              value: Provider.of<LocaleProvider>(context, listen: false)
                      .locale
                      ?.languageCode ==
                  'es',
              onChanged: (value) {
                Provider.of<LocaleProvider>(context, listen: false)
                    .switchLocale();
              },
            ),
          ),
        ],
      ),
    );
  }
}
