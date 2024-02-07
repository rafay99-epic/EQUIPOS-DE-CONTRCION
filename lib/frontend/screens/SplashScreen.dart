import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quotaserver/frontend/views/splash.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Theme.of(context).colorScheme.secondary,
    ));
    return const Scaffold(
      body: splash(),
    );
  }
}
