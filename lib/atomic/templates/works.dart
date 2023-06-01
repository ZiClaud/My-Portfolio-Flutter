import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/padding.dart';
import 'package:my_portfolio/atomic/atoms/typography.dart';
import 'package:my_portfolio/atomic/organisms/section_containers.dart';
import 'package:my_portfolio/data/basics/work_container.dart';
import 'package:my_portfolio/data/fake_db.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SectionContainerColumn(children: _workWidgets());
  }
}

List<Widget> _workWidgets() {
  return const [
    TitleBox(title1: 'My best ', title2: 'Works'),
    WorkContainerData(work: iremi, isImageFirst: true),
    SpaceWidgets(inHeight: true),
    WorkContainerData(work: jeiom, isImageLast: true),
    SpaceWidgets(inHeight: true),
//    WorkContainer(work: website, isImageFirst: true),
//    SpaceWidgets(inHeight: true),
  ];
}
