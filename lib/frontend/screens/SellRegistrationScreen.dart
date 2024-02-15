import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:quotaserver/frontend/views/sellregistration.dart';
import 'package:quotaserver/frontend/widgets/appbar.dart';

class SellRegistrationScreen extends StatelessWidget {
  const SellRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Theme.of(context).colorScheme.background,
    ));
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const MyAppBar(),
      body: const SellRegistration(),
    );
  }
}
