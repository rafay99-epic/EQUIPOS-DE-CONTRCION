import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quotaserver/frontend/widgets/textstyle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  Widget _buildText(
    String text, {
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign textAlign = TextAlign.justify,
    required BuildContext context,
  }) {
    return MyTexxtStyle(
      text: text,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: Theme.of(context).colorScheme.primary,
      textAlign: textAlign,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(
          AppLocalizations.of(context)!.termandconditiontitle,
          style: GoogleFonts.poppins(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 10),
              _buildText(AppLocalizations.of(context)!.welcomemessage,
                  fontSize: 20, fontWeight: FontWeight.bold, context: context),
              const SizedBox(height: 10),
              _buildText(
                  AppLocalizations.of(context)!
                      .termsIntro
                      .replaceAll('\\n', '\n'),
                  context: context),
              const SizedBox(height: 10),
              _buildText(AppLocalizations.of(context)!.cookiestitle,
                  context: context, fontSize: 20, fontWeight: FontWeight.bold),
              const SizedBox(height: 10),
              _buildText(
                  AppLocalizations.of(context)!.cookies.replaceAll('\\n', '\n'),
                  context: context),
              const SizedBox(height: 10),
              _buildText(AppLocalizations.of(context)!.licensetitle,
                  fontSize: 20, fontWeight: FontWeight.bold, context: context),
              const SizedBox(height: 10),
              _buildText(
                  AppLocalizations.of(context)!.lience.replaceAll('\\n', '\n'),
                  context: context),
              const SizedBox(height: 10),
              _buildText(AppLocalizations.of(context)!.disclaimertitle,
                  fontSize: 20, fontWeight: FontWeight.bold, context: context),
              const SizedBox(height: 10),
              _buildText(
                  AppLocalizations.of(context)!
                      .disclaimer
                      .replaceAll('\\n', '\n'),
                  context: context),
              const SizedBox(height: 10),
              _buildText(
                  AppLocalizations.of(context)!.jusodicationandcomprtiontitle,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  context: context),
              const SizedBox(height: 10),
              _buildText(
                  AppLocalizations.of(context)!
                      .jusodicationandcomprtion
                      .replaceAll('\\n', '\n'),
                  context: context),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
