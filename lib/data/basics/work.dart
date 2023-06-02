import 'package:my_portfolio/data/basics/work_page.dart';

class WorkData {
  final String title;
  final String description;
  final String descriptionBold;
  final String category;
  final WorkPageData? pageData;
  final String? url;
  final String? urlHD;
  final String? path;

  const WorkData({
    required this.title,
    required this.description,
    required this.descriptionBold,
    required this.category,
    this.pageData,
    this.url,
    this.urlHD,
    this.path,
  }) : assert(path != null || urlHD != null);
}
