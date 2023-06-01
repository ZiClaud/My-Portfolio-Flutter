import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/pages/main_page.dart';
import 'package:my_portfolio/data/fake_db.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('it', 'IT')],
      path: '../assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Claudio Di Maio Portfolio",
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
        iremi.pageRoute!: (context) => iremiPage.getPage(),
        jeiom.pageRoute!: (context) => jeiomPage.getPage(),
      },
//      home: MainPage(),
    );
  }
}
