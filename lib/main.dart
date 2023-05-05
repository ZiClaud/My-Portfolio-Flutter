import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/home/about_me.dart';
import 'package:my_portfolio/pages/home/footer.dart';
import 'package:my_portfolio/pages/home/home.dart';
import 'package:my_portfolio/pages/home/skills.dart';
import 'package:my_portfolio/pages/home/work.dart';
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
      title: "Claudio Di Maio portfolio",
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/iremi': (context) => const MyHomePage(), //TODO: Change
        '/jeiom': (context) => const JeiomPage(),
      },
//      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final ItemScrollController _scrollController = ItemScrollController();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    setFEMeFFEM(context);
    setScreenWidthHeight(context);

    final List<Widget> items = [
      getHomePage(),
      getSkillsPage(),
      getWorkPage(),
      getAboutMePage(),
      // TODO: SectionContainerFill(getFooterPage())?
      getFooterPage(),
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
