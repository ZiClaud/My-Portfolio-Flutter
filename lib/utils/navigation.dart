import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

/// Scroll
final ItemScrollController itemScrollController = ItemScrollController();

class ScrollablePage extends StatelessWidget {
  final List<Widget> children;

  const ScrollablePage({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      itemCount: children.length,
      itemBuilder: (context, index) => children[index],
      itemScrollController: itemScrollController,
    );
  }
}

void scrollToItem(int index) {
  itemScrollController.scrollTo(
      index: index, duration: const Duration(seconds: 1));
}

/// New page
Future navigateToPage(BuildContext context, String pageRoute) {
  return Navigator.pushNamed(context, pageRoute);
}
