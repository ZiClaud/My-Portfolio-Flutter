import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/padding.dart';
import 'package:my_portfolio/atomic/atoms/typography.dart';
import 'package:my_portfolio/data/basics/work_container.dart';
import 'package:my_portfolio/data/fake_db.dart';
import 'package:my_portfolio/utils/utils.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _WorkSectionContainerColumn(children: _workWidgets());
  }
}

List<Widget> _workWidgets() {
  return [
    TitleBox(title1: tr("works_title1"), title2: tr("works_title2")),
    WorkContainerData(work: iremi, isImageFirst: true),
    SpaceWidgets(inHeight: true),
    WorkContainerData(work: jeiom, isImageLast: true),
    SpaceWidgets(inHeight: true),
//    WorkContainer(work: website, isImageFirst: true),
//    SpaceWidgets(inHeight: true),
  ];
}

class _WorkSectionContainerColumn extends StatelessWidget {
  final List<Widget> children;

  const _WorkSectionContainerColumn({required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: defaultPadding(context, top: 24, bottom: 57),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (Widget child in children) child,
        ],
      ),
    );
  }
}
