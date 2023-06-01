import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/molecules/image_container/work_image_container.dart';
import 'package:my_portfolio/atomic/organisms/work_section_containers.dart';
import 'package:my_portfolio/data/basics/work.dart';

class WorkContainerData extends StatelessWidget {
  final WorkData work;
  final bool isImageFirst;
  final bool isImageLast;

  const WorkContainerData(
      {super.key,
      required this.work,
      this.isImageFirst = false,
      this.isImageLast = false})
      : assert(isImageFirst != isImageLast);

  @override
  Widget build(BuildContext context) {
    return isImageFirst
        ? WorkContainerImageText(
            title: work.title,
            description: work.description,
            descriptionBold: work.descriptionBold,
            category: work.category,
            pageRoute: work.pageRoute,
            child: WorkImg(
              url: work.url,
              urlHD: work.urlHD,
              path: work.path,
            ),
          )
        : WorkContainerTextImage(
            title: work.title,
            description: work.description,
            descriptionBold: work.descriptionBold,
            category: work.category,
            pageRoute: work.pageRoute,
            child: WorkImg(
              url: work.url,
              urlHD: work.urlHD,
              path: work.path,
            ),
          );
  }
}
