import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/colors.dart';
import 'package:my_portfolio/atomic/atoms/typography.dart';
import 'package:my_portfolio/atomic/atoms/responsive.dart';
import 'package:my_portfolio/atomic/molecules/image_container/about_me_image_container.dart';
import 'package:my_portfolio/data/images.dart';

class AboutMeText extends StatelessWidget {
  const AboutMeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ResponsiveWidget.isDesktop(context)
          ? 600
          : ResponsiveWidget.getWidth(context) * 0.9,
      height: ResponsiveWidget.isDesktop(context) ? double.infinity : null,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 150.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'A BIT ABOUT ME',
                style: h4Bold(context, color: neutral1Color),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 16.0)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'As a software developer, I am driven to create digital experiences that are both ',
                      style: h3Light(context, color: neutral2Color),
                    ),
                    TextSpan(
                      text: 'visually striking and intuitive to navigate. ',
                      style: h3Bold(context, color: neutral1Color),
                    ),
                    TextSpan(
                      text:
                          'Besides programming, I am also deeply interested in ',
                      style: h3Light(context, color: neutral2Color),
                    ),
                    TextSpan(
                      text: 'design, music, and chess.',
                      style: h3Bold(context, color: neutral1Color),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutMeImages extends StatelessWidget {
  const AboutMeImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      height: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 32),
            width: 282,
            height: 374,
            child: const AboutMeImage(url: aboutMeMusicImgUrl),
          ),
          SizedBox(
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 32),
                  width: 282,
                  height: 374,
                  child: const AboutMeImage(url: aboutMeDesignImgUrl),
                ),
                const SizedBox(
                  width: 282,
                  height: 374,
                  child: AboutMeImage(url: aboutMeChessImgUrl),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
