import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/sections/about_me.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/typography.dart';

class LeftAboutMeText extends StatelessWidget {
  const LeftAboutMeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      height: double.infinity,
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

class RightAboutMeImages extends StatelessWidget {
  const RightAboutMeImages({
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
            child: aboutMeMusicImg,
          ),
          SizedBox(
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin:
                      const EdgeInsets.only(bottom: 32),
                  width: 282,
                  height: 374,
                  child: aboutMeDesignImg,
                ),
                const SizedBox(
                  width: 282,
                  height: 374,
                  child: aboutMeChessImg,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
