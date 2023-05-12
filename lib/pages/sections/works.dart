import 'package:flutter/material.dart';
import 'package:my_portfolio/basics/fake_db.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/widgets/section_containers.dart';
import 'package:my_portfolio/widgets/widgets.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SectionContainerColumn(widgets: _workWidgets());
  }
}

List<Widget> _workWidgets() {
  return [
    const TitleBox(title1: 'My best ', title2: 'Works'),
    iremi.getContainer(isImageFirst: true),
    const SpaceWidgets(inHeight: true),
    jeiom.getContainer(isImageLast: true),
    const SpaceWidgets(inHeight: true),
//    website.getContainer(isImageFirst: true),
//    const SpaceWidgets(inHeight: true),
  ];
}
