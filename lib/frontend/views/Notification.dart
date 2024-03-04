import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/frontend/widgets/NotificationCards.dart';
import 'package:quotaserver/frontend/widgets/appbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NotificationSeen extends StatefulWidget {
  const NotificationSeen({super.key});

  @override
  State<NotificationSeen> createState() => _NotificationSeenState();
}

class _NotificationSeenState extends State<NotificationSeen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const MyAppBar(),
      body: Padding(
        padding: EdgeInsets.all(screenSize.width * 0.02), // 2% of screen width
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.all(screenSize.width * 0.02), // 2% of screen width
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    // 'Notifications',
                    AppLocalizations.of(context)!.notifications,
                    style: GoogleFonts.poppins(
                      fontSize: 19,
                      color: Colors.grey.shade900,
                    ),
                  ),
                  const Icon(Icons.notifications),
                ],
              ),
            ),
            SizedBox(height: screenSize.height * 0.01), // 1% of screen height
            const NotificationCards(
              imageUrl:
                  'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              notificationContent: 'Notification Content',
            ),
          ],
        ),
      ),
    );
  }
}
