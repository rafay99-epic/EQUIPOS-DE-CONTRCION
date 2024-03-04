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
      locale: const Locale('es'),
      theme: lightmode,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:quotaserver/constant/theme/colors.dart';
// import 'package:quotaserver/frontend/screens/SplashScreen.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:quotaserver/frontend/widgets/languageSwitch.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Locale _locale = const Locale('en'); // Default locale

//   void _changeLanguage(Locale locale) {
//     setState(() {
//       _locale = locale; // Update the locale when a new one is selected
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       localizationsDelegates: AppLocalizations.localizationsDelegates,
//       supportedLocales: AppLocalizations.supportedLocales,
//       locale: _locale, // Use the selected locale
//       theme: lightmode,
//       debugShowCheckedModeBanner: false,
//       home: Builder(
//         builder: (context) => const Scaffold(
//           body: SplashScreen(),
//         ),
//       ),
//     );
//   }
// }
