import 'package:flutter/material.dart';
import 'package:my_portfolio/basics/fake_db.dart';
import 'package:my_portfolio/pages/sections/about_me.dart';
import 'package:my_portfolio/pages/sections/footer.dart';
import 'package:my_portfolio/pages/sections/home.dart';
import 'package:my_portfolio/pages/sections/skills.dart';
import 'package:my_portfolio/pages/sections/works.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/utils/navigation.dart';
import 'package:my_portfolio/widgets/header.dart';

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

class MainPage extends StatelessWidget {
  //TODO: Change to stateful widget?

  final List<Widget> items = const [
    HomePage(),
    SkillsPage(),
    WorkPage(),
    AboutMePage(),
    FooterPage(),
  ];

  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ScrollablePage(children: items),
      ),
    );
  }
}
