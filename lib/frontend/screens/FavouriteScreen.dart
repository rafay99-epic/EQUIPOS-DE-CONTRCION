import 'package:flutter/material.dart';
import 'package:quotaserver/frontend/views/favourite.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const favourite(),
    );
  }
}
