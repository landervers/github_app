import 'package:flutter/material.dart';
import 'package:github_client_app/routes/home_route.dart';
import 'package:github_client_app/routes/language_route.dart';
import 'package:github_client_app/routes/login_route.dart';
import 'package:github_client_app/routes/theme_change_route.dart';
import 'package:provider/provider.dart';

import 'package:flutter/cupertino.dart';
import 'common/global.dart';
import 'generated/l10n.dart';
import 'l10n/localization_intl.dart';
import 'models/locale_model.dart';
import 'models/theme_model.dart';
import 'models/user_model.dart';
import 'package:flutter_localizations/flutter_localizations.dart' show GlobalMaterialLocalizations, GlobalWidgetsLocalizations;


void main() {
  void main() => Global.init().then((e) => runApp(MyApp()));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeModel()),
        ChangeNotifierProvider(create: (_) => UserModel()),
        ChangeNotifierProvider(create: (_) => LocaleModel()),
      ],
      child: Consumer2<ThemeModel, LocaleModel>(
        builder: (BuildContext context, themeModel, localeModel, child) {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: themeModel.theme as MaterialColor?,
            ),
            onGenerateTitle: (context) => S.current.title,
            home: HomeRoute(),
            locale: localeModel.getLocale(),
            supportedLocales: [
              const Locale('en', 'US'), // 美国英语
              const Locale('zh', 'CN'), // 中文简体
              // 其他Locales
            ],
            localizationsDelegates: [
              // 本地化的代理类
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              DemoLocalizationsDelegate(), // 自定义的本地化代理类
            ],

            localeResolutionCallback: (locale, supportedLocales) {
              if (localeModel.getLocale() != null) {
                // 如果已经选定语言，则不跟随系统
                return localeModel.getLocale();
              } else {
                // 跟随系统
                Locale selectedLocale = locale ?? Locale('en', 'US');
                if (supportedLocales.contains(selectedLocale)) {
                  return selectedLocale;
                } else {
                  // 如果系统语言不是中文简体或美国英语，则默认使用美国英语
                  return const Locale('en', 'US');
                }
              }
            },
            // 注册路由表
            routes: <String, WidgetBuilder>{
              "login": (context) => LoginRoute(),
              "themes": (context) => ThemeChangeRoute(),
              "language": (context) => LanguageRoute(),
            },
          );
        },
      ),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
