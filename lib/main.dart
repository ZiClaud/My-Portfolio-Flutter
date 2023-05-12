import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/home/about_me.dart';
import 'package:my_portfolio/pages/home/footer.dart';
import 'package:my_portfolio/pages/home/home.dart';
import 'package:my_portfolio/pages/home/skills.dart';
import 'package:my_portfolio/pages/home/work.dart';
import 'package:my_portfolio/pages/works/iremi_work_page.dart';
import 'package:my_portfolio/pages/works/jeiom_work_page.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/utils/media_query.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

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
        '/iremi': (context) => const IremiPage(),
        '/jeiom': (context) => const JeiomPage(),
      },
//      home: MyHomePage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

final ItemScrollController _scrollController = ItemScrollController();

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    setIsMobile(context);
    setFEMeFFEM(context);
    setScreenWidthHeight(context);
    print("Updated stuff");

    final List<Widget> items = [
      const HomePage(),
      const SkillsPage(),
      const WorkPage(),
      const AboutMePage(),
      const FooterPage(),
    ];

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ScrollablePositionedList.builder(
          itemScrollController: _scrollController,
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
  _scrollController.scrollTo(
    index: index,
    duration: const Duration(milliseconds: 500),
  );
}
