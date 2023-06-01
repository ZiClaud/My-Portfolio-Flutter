import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/pages/main_page.dart';
import 'package:my_portfolio/data/fake_db.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Claudio Di Maio Portfolio",
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
        iremi.pageRoute!: (context) => iremiPage.getPage(),
        jeiom.pageRoute!: (context) => jeiomPage.getPage(),
      },
//      home: MyHomePage(),
    );
  }
}
