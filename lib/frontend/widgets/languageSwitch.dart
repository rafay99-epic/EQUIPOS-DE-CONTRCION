// // LanguageSelector.dart
// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// class LanguageSelector extends StatelessWidget {
//   final ValueChanged<Locale> onLanguageSelected;

//   const LanguageSelector({Key? key, required this.onLanguageSelected})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<Locale>(
//       value: Localizations.localeOf(context),
//       onChanged: (Locale? locale) {
//         if (locale != null) {
//           onLanguageSelected(locale);
//         }
//       },
//       items: AppLocalizations.supportedLocales.map((Locale locale) {
//         return DropdownMenuItem<Locale>(
//           value: locale,
//           child: Text(locale.toLanguageTag()),
//         );
//       }).toList(),
//     );
//   }
// }

// LanguageToggle.dart
import 'package:flutter/material.dart';

class LanguageToggle extends StatelessWidget {
  final ValueChanged<bool> onToggle;
  final bool isEnglish;

  const LanguageToggle(
      {Key? key, required this.onToggle, required this.isEnglish})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text('Language'),
      subtitle: Text(isEnglish ? 'English' : 'Spanish'),
      value: isEnglish,
      onChanged: (bool value) {
        onToggle(value);
      },
    );
  }
}
