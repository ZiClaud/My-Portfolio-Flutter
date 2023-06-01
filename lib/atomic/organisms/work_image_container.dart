import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/molecules/image_container/hd_image.dart';
import 'package:my_portfolio/utils/utils.dart';

/// WORKS
class WorkImg extends StatelessWidget {
  final String? url;
  final String? urlHD;
  final String? path;

  const WorkImg({super.key, this.url, this.urlHD, this.path})
      : assert(path != null || urlHD != null);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: getContainerRadius(),
      child: path != null
          ? Image(
              image: AssetImage(path!),
              width: 591,
              height: 500,
              fit: BoxFit.cover,
            )
          : HighDefinitionImage(
              lowResImageURL: url,
              highResImageURL: urlHD!,
              width: 591,
              height: 500,
              fit: BoxFit.cover,
            ),
    );
  }
}
