import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/pages/main_page.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

/// Scroll
class ScrollablePage extends StatefulWidget {
  final List<Widget> children;

  const ScrollablePage({Key? key, required this.children}) : super(key: key);

  @override
  _ScrollablePageState createState() => _ScrollablePageState();

  static void scrollToItem(int index) {
    _ScrollablePageState.scrollToItem(index);
  }
}

class _ScrollablePageState extends State<ScrollablePage> {
  static late ItemScrollController itemScrollController;

  @override
  void initState() {
    super.initState();
    itemScrollController = ItemScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      itemCount: widget.children.length,
      itemBuilder: (context, index) => widget.children[index],
      itemScrollController: itemScrollController,
    );
  }

  static void scrollToItem(int index) {
    itemScrollController.scrollTo(
        index: index, duration: const Duration(seconds: 1));
  }
}

/// New page
Future navigateToPage(BuildContext context, Widget page) {
  return Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => page,
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ));
}

Future navigateToHome(BuildContext context) {
  return Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => const MainPage(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ));
}
