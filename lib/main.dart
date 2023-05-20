import 'package:flutter/material.dart';
import 'package:my_portfolio/basics/fake_db.dart';
import 'package:my_portfolio/pages/sections/about_me.dart';
import 'package:my_portfolio/pages/sections/footer.dart';
import 'package:my_portfolio/pages/sections/home.dart';
import 'package:my_portfolio/pages/sections/skills.dart';
import 'package:my_portfolio/pages/sections/works.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/utils/media_query.dart';
//import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

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

//final ItemScrollController _scrollController = ItemScrollController();

class MainPage extends StatelessWidget { //TODO: Change to stateful widget?
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    setFEMeFFEM(context);
    setScreenWidthHeight(context);

    const List<Widget> items = [
      HomePage(),
      SkillsPage(),
      WorkPage(),
      AboutMePage(),
      FooterPage(),
    ];

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView.builder(
//          itemScrollController: _scrollController,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return items[index];
          },
        ),
      ),
    );
  }
}

void scrollToItem(int index) {
  /*
  _scrollController.scrollTo(
    index: index,
    duration: const Duration(milliseconds: 500),
  );
  */
}
