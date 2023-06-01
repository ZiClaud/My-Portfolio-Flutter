class WorkData {
  final String title;
  final String description;
  final String descriptionBold;
  final String category;
  final String? pageRoute; //TODO: It needs to start with / or be null
  final String? url;
  final String? urlHD;
  final String? path;

  const WorkData({
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
