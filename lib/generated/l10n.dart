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

  /// `Flutter 应用`
  String get title {
    return Intl.message(
      'Flutter 应用',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `登录`
  String get login {
    return Intl.message(
      '登录',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `666`
  String get test {
    return Intl.message(
      '666',
      name: 'test',
      desc: '',
      args: [],
    );
  }

  /// `主题`
  String get theme {
    return Intl.message(
      '主题',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `用户名`
  String get userName {
    return Intl.message(
      '用户名',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `语言`
  String get language {
    return Intl.message(
      '语言',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `自动`
  String get auto {
    return Intl.message(
      '自动',
      name: 'auto',
      desc: '',
      args: [],
    );
  }

  /// `密码`
  String get password {
    return Intl.message(
      '密码',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `用户名请求`
  String get userNameRequired {
    return Intl.message(
      '用户名请求',
      name: 'userNameRequired',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the ' passwordRequired' key

  /// `用户名或密码错误`
  String get userNameOrPasswordWrong {
    return Intl.message(
      '用户名或密码错误',
      name: 'userNameOrPasswordWrong',
      desc: '',
      args: [],
    );
  }

  /// `退出`
  String get logout {
    return Intl.message(
      '退出',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `没有描述`
  String get noDescription {
    return Intl.message(
      '没有描述',
      name: 'noDescription',
      desc: '',
      args: [],
    );
  }

  /// `是的`
  String get yes {
    return Intl.message(
      '是的',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `退出提示`
  String get logoutTip {
    return Intl.message(
      '退出提示',
      name: 'logoutTip',
      desc: '',
      args: [],
    );
  }

  /// `取消`
  String get cancel {
    return Intl.message(
      '取消',
      name: 'cancel',
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
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
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
