import 'package:flutter/material.dart';
import 'package:quotaserver/constant/theme/colors.dart';
import 'package:quotaserver/frontend/screens/EditProfileScreen.dart';
import 'package:quotaserver/frontend/screens/PaymentScreen.dart';
import 'package:quotaserver/frontend/screens/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

// Orginal Code
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightmode,
      debugShowCheckedModeBanner: false,
      // home: const SplashScreen(),
      home: const PaymentScreen(),
    );
  }
}
