// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `G Commerce`
  String get title {
    return Intl.message(
      'G Commerce',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Clothes`
  String get clothes_category {
    return Intl.message(
      'Clothes',
      name: 'clothes_category',
      desc: '',
      args: [],
    );
  }

  /// `Food`
  String get food_category {
    return Intl.message(
      'Food',
      name: 'food_category',
      desc: '',
      args: [],
    );
  }

  /// `Clinics`
  String get clinics_category {
    return Intl.message(
      'Clinics',
      name: 'clinics_category',
      desc: '',
      args: [],
    );
  }

  /// `Tech`
  String get tech_category {
    return Intl.message(
      'Tech',
      name: 'tech_category',
      desc: '',
      args: [],
    );
  }

  /// `search`
  String get search_bar {
    return Intl.message(
      'search',
      name: 'search_bar',
      desc: '',
      args: [],
    );
  }

  /// `register`
  String get register {
    return Intl.message(
      'register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `login`
  String get login {
    return Intl.message(
      'login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `user name`
  String get user_name {
    return Intl.message(
      'user name',
      name: 'user_name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `phone number`
  String get phone {
    return Intl.message(
      'phone number',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `password must have :-`
  String get password_validation {
    return Intl.message(
      'password must have :-',
      name: 'password_validation',
      desc: '',
      args: [],
    );
  }

  /// `At least 1 uppercase letter`
  String get uppercase_validation {
    return Intl.message(
      'At least 1 uppercase letter',
      name: 'uppercase_validation',
      desc: '',
      args: [],
    );
  }

  /// `At least 1 smallcase letter`
  String get lowercase_validation {
    return Intl.message(
      'At least 1 smallcase letter',
      name: 'lowercase_validation',
      desc: '',
      args: [],
    );
  }

  /// `At least 1 number`
  String get number {
    return Intl.message(
      'At least 1 number',
      name: 'number',
      desc: '',
      args: [],
    );
  }

  /// `At least 1 special character letter`
  String get special_character {
    return Intl.message(
      'At least 1 special character letter',
      name: 'special_character',
      desc: '',
      args: [],
    );
  }

  /// `At least 8 character long`
  String get at_least_8_character {
    return Intl.message(
      'At least 8 character long',
      name: 'at_least_8_character',
      desc: '',
      args: [],
    );
  }

  /// `please enter the user name`
  String get please_enter_user_name {
    return Intl.message(
      'please enter the user name',
      name: 'please_enter_user_name',
      desc: '',
      args: [],
    );
  }

  /// `please enter a valid email`
  String get please_enter_email {
    return Intl.message(
      'please enter a valid email',
      name: 'please_enter_email',
      desc: '',
      args: [],
    );
  }

  /// `please enter a valid phone`
  String get please_enter_phone {
    return Intl.message(
      'please enter a valid phone',
      name: 'please_enter_phone',
      desc: '',
      args: [],
    );
  }

  /// `please enter  a valid password`
  String get please_enter_password {
    return Intl.message(
      'please enter  a valid password',
      name: 'please_enter_password',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
