import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale; // Make _locale nullable

  LocaleProvider() {
    _loadLocale();
  }

  Locale? get locale => _locale; // Getter also returns a nullable Locale

  void _loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    String languageCode = prefs.getString('language_code') ?? 'en';
    _locale = Locale(languageCode, '');
    notifyListeners();
  }

  void switchLocale() async {
    final prefs = await SharedPreferences.getInstance();
    if (_locale?.languageCode == 'en') {
      _locale = Locale('es', '');
      await prefs.setString('language_code', 'es');
    } else {
      _locale = Locale('en', '');
      await prefs.setString('language_code', 'en');
    }
    notifyListeners();
  }
}
