import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'messages_all.dart';



class GmLocalizations {
  static Future<GmLocalizations> load(Locale locale) {
    final String name = locale.countryCode!.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    //2
    return initializeMessages(localeName).then((b) {
      Intl.defaultLocale = localeName;
      return GmLocalizations();
    });
  }

  static GmLocalizations? of(BuildContext context) {
    return Localizations.of<GmLocalizations>(context, GmLocalizations);
  }

  String get title {
    return Intl.message(
      'Flutter APP',
      name: 'title',
      desc: 'Title for the Demo application',
    );
  }
}

//Locale代理类
class DemoLocalizationsDelegate extends LocalizationsDelegate<GmLocalizations> {
  const DemoLocalizationsDelegate();

  //是否支持某个Local
  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode);

  // Flutter会调用此类加载相应的Locale资源类
  // @override
  // Future<GmLocalizations> load(Locale locale) {
  //   return SynchronousFuture<GmLocalizations>(
  //       GmLocalizations(locale. == "zh")
  //   );
  // }

  // 当Localizations Widget重新build时，是否调用load重新加载Locale资源.
  @override
  bool shouldReload(DemoLocalizationsDelegate old) => false;

  @override
  Future<GmLocalizations> load(Locale locale) {
    print("$locale");
    return SynchronousFuture<GmLocalizations>(
        GmLocalizations()
    );
  }
}