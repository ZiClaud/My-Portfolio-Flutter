import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/templates/footer.dart';
import 'package:my_portfolio/atomic/templates/skills.dart';
import 'package:my_portfolio/atomic/templates/works.dart';
import 'package:my_portfolio/data/fake_db.dart';
import 'package:my_portfolio/atomic/templates/about_me.dart';
import 'package:my_portfolio/atomic/templates/home.dart';
import 'package:my_portfolio/atomic/atoms/colors.dart';
import 'package:my_portfolio/utils/navigation.dart';

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
