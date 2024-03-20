import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotaserver/backend/provider/provider.dart';

import 'package:quotaserver/constant/theme/colors.dart';
import 'package:quotaserver/frontend/screens/SplashScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LocaleProvider(),
      child: const MyApp(),
    ),
  );
}

// Orginal Code
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context);

    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: localeProvider.locale,
      theme: lightmode,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
