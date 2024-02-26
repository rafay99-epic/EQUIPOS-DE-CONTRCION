import 'package:flutter/material.dart';
import 'package:quotaserver/frontend/views/articleregister.dart';
import 'package:quotaserver/frontend/widgets/appbar.dart';

class ArticleRegisterSceen extends StatelessWidget {
  const ArticleRegisterSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const MyAppBar(),
      body: const ArticleRegister(),
    );
  }
}
