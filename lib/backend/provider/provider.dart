import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale;

  LocaleProvider() {
    _loadLocale();
  }

  Locale? get locale => _locale;

  void _loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    String languageCode = prefs.getString('language_code') ?? 'en';
    _locale = Locale(languageCode, '');
    notifyListeners();
  }

  void switchLocale() async {
    final prefs = await SharedPreferences.getInstance();
    if (_locale?.languageCode == 'en') {
      _locale = const Locale('es', '');
      await prefs.setString('language_code', 'es');
    } else {
      _locale = const Locale('en', '');
      await prefs.setString('language_code', 'en');
    }
    notifyListeners();
  }
}
