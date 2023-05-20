import 'package:flutter/widgets.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/utils/media_query.dart';
import 'package:my_portfolio/widgets/work_page.dart';
import 'package:my_portfolio/widgets/work_section_containers.dart';

class Work {
  final String title;
  final String description;
  final String descriptionBold;
  final String category;
  final String? pageRoute; //TODO: It needs to start with / or be null
  final String? url;
  final String? urlHD;
  final String? path;

  const Work({
    required this.title,
    required this.description,
    required this.descriptionBold,
    required this.category,
    this.pageRoute,
    this.url,
    this.urlHD,
    this.path,
  }) : assert(path != null || urlHD != null);
}

class WorkPage {
  final String title;
  final List<String>? skills;
  final String description1;
  final String descriptionBold1;
  final String? description2;
  final String? descriptionBold2;
  final List<WorkPageImage> images; //TODO: Change WorkPageImage

  const WorkPage({
    required this.title,
    this.skills,
    required this.description1,
    required this.descriptionBold1,
    this.description2,
    this.descriptionBold2,
    required this.images,
  });

  MainWorkPage getPage() {
    return MainWorkPage(
      title: title,
      skills: skills,
      description1: description1,
      descriptionBold1: descriptionBold1,
      description2: description2,
      descriptionBold2: descriptionBold2,
      images: images,
    );
  }
}

class WorkContainer extends StatelessWidget {
  final Work work;
  final bool isImageFirst;
  final bool isImageLast;

  const WorkContainer(
      {super.key,
      required this.work,
      this.isImageFirst = false,
      this.isImageLast = false})
      : assert(isImageFirst != isImageLast);

  @override
  Widget build(BuildContext context) {
    return isMobile
        ? _getContainerMobile()
        : isImageFirst
            ? _getContainerImageText()
            : _getContainerTextImage();
  }

  WorkContainerImageText _getContainerImageText() {
    return WorkContainerImageText(
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

  WorkContainerTextImage _getContainerTextImage() {
    return WorkContainerTextImage(
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

  WorkContainerMobile _getContainerMobile() {
    return WorkContainerMobile(
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
