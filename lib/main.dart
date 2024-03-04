import 'package:flutter/material.dart';

import 'package:quotaserver/constant/theme/colors.dart';
import 'package:quotaserver/frontend/screens/SplashScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

// Orginal Code
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('en'),
      theme: lightmode,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
