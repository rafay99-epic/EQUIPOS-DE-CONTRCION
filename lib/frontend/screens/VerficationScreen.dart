import 'package:flutter/material.dart';
import 'package:quotaserver/frontend/views/verfication.dart';

class verficationScreen extends StatelessWidget {
  const verficationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: verfication(),
    );
  }
}
