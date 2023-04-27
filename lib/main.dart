import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/about_me.dart';
import 'package:my_portfolio/pages/footer.dart';
import 'package:my_portfolio/pages/home.dart';
import 'package:my_portfolio/pages/skills.dart';
import 'package:my_portfolio/pages/work.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Claudio Di Maio's portfolio",
      /*
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      */
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    setFEMeFFEM(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(children: [
        Center(child: getHomePage()),
        Center(child: getSkillsPage()),
        Center(child: getWorkPage()),
        Center(child: getAboutMePage()),
        Center(child: getFooterPage()),
      ]),
    );
  }
}
