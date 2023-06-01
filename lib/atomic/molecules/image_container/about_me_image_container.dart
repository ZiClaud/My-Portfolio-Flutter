import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/utils.dart';

/// About me section
class AboutMeImage extends StatelessWidget {
  final String? path;
  final String? url;

  const AboutMeImage({super.key, this.path, this.url})
      : assert((path != null || url != null) && (path == null || url == null));

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: getContainerRadius(),
      child: path != null
          ? Image(
              image: AssetImage(path!),
              width: 282,
              height: 374,
              fit: BoxFit.cover,
            )
          : Image.network(
              url!,
              width: 282,
              height: 374,
              fit: BoxFit.cover,
            ),
    );
  }
}
