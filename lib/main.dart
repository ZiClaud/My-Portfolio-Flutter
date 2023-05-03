import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/about_me.dart';
import 'package:my_portfolio/pages/footer.dart';
import 'package:my_portfolio/pages/home.dart';
import 'package:my_portfolio/pages/skills.dart';
import 'package:my_portfolio/pages/work.dart';
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
      body: ScrollablePositionedList.builder(
        itemScrollController: _scrollController,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return items[index];
        },
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
