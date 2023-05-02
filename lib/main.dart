import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/about_me.dart';
import 'package:my_portfolio/pages/footer.dart';
import 'package:my_portfolio/pages/home.dart';
import 'package:my_portfolio/pages/skills.dart';
import 'package:my_portfolio/pages/work.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/utils/media_query.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Claudio Di Maio's portfolio",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    setFEMeFFEM(context);
    setScreenWidthHeight(context);
    return Container( // TODO: Go back to scaffold?
      decoration: const BoxDecoration(gradient: backgroundColorGradient),
      width: double.infinity,
      height: double.infinity,
      child: ListView(children: [
        getHomePage(),
        getSkillsPage(),
        getWorkPage(),
        getAboutMePage(),
        // TODO: sectionContainerFill(getFooterPage())?
        getFooterPage(),
      ]),
    );
  }
}
