import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quotaserver/frontend/views/favourite.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Theme.of(context).colorScheme.background,
    ));
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const favourite(),
    );
  }
}
