
import 'package:my_portfolio/atomic/pages/work_page.dart';

class WorkPageData {
  final String title;
  final List<String>? skills;
  final String description1;
  final String descriptionBold1;
  final String? description2;
  final String? descriptionBold2;
  final List<WorkPageImage> images; //TODO: Change WorkPageImage

  const WorkPageData({
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
