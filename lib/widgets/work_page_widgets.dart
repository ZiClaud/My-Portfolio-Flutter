import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/media_query.dart';

/// Whole Work Page
class MainWorkPage extends StatelessWidget {
  final String title;
  final String description1;
  final String descriptionBold1;
  final String description2;
  final String descriptionBold2;
  final List<WorkPageImage> images;

  const MainWorkPage(
      {Key? key,
      required this.title,
      required this.description1,
      required this.descriptionBold1,
      required this.description2,
      required this.descriptionBold2,
      required this.images})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _WorkTitle(title: title),
              _WorkDescription(
                description1: description1,
                descriptionBold1: descriptionBold1,
                description2: description2,
                descriptionBold2: descriptionBold2,
              ),
              _ImageCarousel(images: images),
            ],
          ),
        ),
      ),
    );
  }
}

/// Image
class WorkPageImage extends StatelessWidget {
  final String url;

  const WorkPageImage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.network(
        url,
        width: 650 * fem,
        height: 350 * fem,
        fit: BoxFit.cover,
      ),
    );
  }
}

/// Carousel
class _ImageCarousel extends StatefulWidget {
  final List<WorkPageImage> images;

  const _ImageCarousel({Key? key, required this.images}) : super(key: key);

  @override
  State<_ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<_ImageCarousel> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            onPressed: () => _getPrevious(),
            child: const ArrowLeftImg(),
          ),
          widget.images[index],
          OutlinedButton(
            onPressed: () => _getNext(),
            child: const ArrowRightImg(),
          ),
        ],
      ),
    );
  }

  _getPrevious() {
    return setState(() {
      index = index - 1;
      if (index < 0) {
        index = widget.images.length - 1;
      }
    });
  }

  _getNext() {
    return setState(() {
      index = index + 1;
      if (index >= widget.images.length) {
        index = 0;
      }
    });
  }
}

/// Title
class _WorkTitle extends StatelessWidget {
  final String title;

  const _WorkTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title,
        style: h2Bold(color: neutral1Color),
      ),
    );
  }
}

/// Description
class _WorkDescription extends StatelessWidget {
  final String description1;
  final String descriptionBold1;
  final String description2;
  final String descriptionBold2;

  const _WorkDescription(
      {required this.description1,
      required this.descriptionBold1,
      required this.description2,
      required this.descriptionBold2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: defaultPadding(),
      width: double.infinity,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$description1 ',
              style: h3Light(color: neutral2Color),
            ),
            TextSpan(
              text: '$descriptionBold1 ',
              style: h3Bold(color: neutral1Color),
            ),
            TextSpan(
              text: '$description2 ',
              style: h3Light(color: neutral2Color),
            ),
            TextSpan(
              text: descriptionBold2,
              style: h3Bold(color: neutral1Color),
            ),
          ],
        ),
      ),
    );
  }
}
