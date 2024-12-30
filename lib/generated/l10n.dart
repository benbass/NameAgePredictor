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

  /// `Determine the age estimate for a specific first name, optionally for a specific country.`
  String get searchForm_introText {
    return Intl.message(
      'Determine the age estimate for a specific first name, optionally for a specific country.',
      name: 'searchForm_introText',
      desc: '',
      args: [],
    );
  }

  /// `Enter a first name...`
  String get searchField_hintText {
    return Intl.message(
      'Enter a first name...',
      name: 'searchField_hintText',
      desc: '',
      args: [],
    );
  }

  /// `The search term may not be empty and only contain letters, hyphens and spaces.`
  String get searchField_invalidValue {
    return Intl.message(
      'The search term may not be empty and only contain letters, hyphens and spaces.',
      name: 'searchField_invalidValue',
      desc: '',
      args: [],
    );
  }

  /// `SEND`
  String get searchButton_send {
    return Intl.message(
      'SEND',
      name: 'searchButton_send',
      desc: '',
      args: [],
    );
  }

  /// `was not found`
  String get responsePage_notFound {
    return Intl.message(
      'was not found',
      name: 'responsePage_notFound',
      desc: '',
      args: [],
    );
  }

  /// `Try again with a different name.`
  String get responsePage_TrayAgainDifferent {
    return Intl.message(
      'Try again with a different name.',
      name: 'responsePage_TrayAgainDifferent',
      desc: '',
      args: [],
    );
  }

  /// `is`
  String get responsePage_is {
    return Intl.message(
      'is',
      name: 'responsePage_is',
      desc: '',
      args: [],
    );
  }

  /// `years old`
  String get responsePage_yearsOld {
    return Intl.message(
      'years old',
      name: 'responsePage_yearsOld',
      desc: '',
      args: [],
    );
  }

  /// `in`
  String get responsePage_in {
    return Intl.message(
      'in',
      name: 'responsePage_in',
      desc: '',
      args: [],
    );
  }

  /// `Try Again?`
  String get responsePage_tryAgain {
    return Intl.message(
      'Try Again?',
      name: 'responsePage_tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Countries`
  String get country_dropDown_hintText {
    return Intl.message(
      'Countries',
      name: 'country_dropDown_hintText',
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
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'fr'),
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
