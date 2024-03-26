import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quotaserver/frontend/widgets/textstyle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(
          AppLocalizations.of(context)!.privacytitle,
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
              _buildText(AppLocalizations.of(context)!.privacytitle,
                  fontSize: 20, fontWeight: FontWeight.bold, context: context),
              const SizedBox(height: 10),
              _buildText(
                  AppLocalizations.of(context)!.privacy.replaceAll('\\n', '\n'),
                  context: context),
              const SizedBox(height: 10),
              _buildText(
                AppLocalizations.of(context)!
                    .useofcollectedinformationtitle
                    .replaceAll('\\n', '\n'),
                context: context,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 10),
              _buildText(
                  AppLocalizations.of(context)!
                      .infocollected
                      .replaceAll('\\n', '\n'),
                  context: context),
              const SizedBox(height: 10),
              _buildText(
                AppLocalizations.of(context)!
                    .useofcollectedinformationtitle
                    .replaceAll('\\n', '\n'),
                context: context,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 10),
              _buildText(
                  AppLocalizations.of(context)!
                      .useofcollectedinformation
                      .replaceAll('\\n', '\n'),
                  context: context),
              const SizedBox(height: 10),
              _buildText(
                AppLocalizations.of(context)!
                    .cookiestitle
                    .replaceAll('\\n', '\n'),
                context: context,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 10),
              _buildText(
                  AppLocalizations.of(context)!
                      .cookiecontent
                      .replaceAll('\\n', '\n'),
                  context: context),
              const SizedBox(height: 10),
              _buildText(
                AppLocalizations.of(context)!
                    .linkstopartners
                    .replaceAll('\\n', '\n'),
                context: context,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 10),
              _buildText(
                  AppLocalizations.of(context)!
                      .linkcontent
                      .replaceAll('\\n', '\n'),
                  context: context),
              const SizedBox(height: 10),
              _buildText(
                AppLocalizations.of(context)!
                    .controlofpersonalinformationtitle
                    .replaceAll('\\n', '\n'),
                context: context,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              _buildText(
                  AppLocalizations.of(context)!
                      .controlofpersonalinfirmation
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
