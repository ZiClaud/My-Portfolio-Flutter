import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';

import 'colors.dart';

/// Testing
String _invisiblePath = "../assets/images/invisible.png";
String _semiInvisiblePath = "../assets/images/semi_invisible.png";

Image _invisibleSkillImg = skillImg(path: _invisiblePath, isHovering: false);
Image _invisibleWorkImg = workImg(path: _invisiblePath);
Image _invisibleAboutMeImg = aboutMeImage(path: _invisiblePath);
Image _invisibleFooterImg = footerImg(path: _invisiblePath, isHovering: false);

/// Logo
Image logoImage() {
  return const Image(
    image: AssetImage("../assets/images/ZC_Logo_white.png"),
    fit: BoxFit.contain,
  );
}

/// SKILLS
Image skillImg({required String path, required bool isHovering}) {
  Color? color;
  if (!isHovering) {
    color = Colors.white;
  }

  return Image(
    image: AssetImage(path),
    fit: BoxFit.cover,
    color: color,
  );
}

Image flutterImg({required bool isHovering}) {
  String path = "../assets/images/flutterimg.png";
  return skillImg(path: path, isHovering: isHovering);
}

Image sqlImg({required bool isHovering}) {
  String path = "../assets/images/sqlimg.png";
  return skillImg(path: path, isHovering: isHovering);
}

Image pythonImg({required bool isHovering}) {
  String path = "../assets/images/pythonimg.png";
  return skillImg(path: path, isHovering: isHovering);
}

Image javaImg({required bool isHovering}) {
  String path = "../assets/images/javaimg.png";
  return skillImg(path: path, isHovering: isHovering);
}

/// WORKS
Image workImg({required String path}) {
  return Image(
    image: AssetImage(path),
    width: 591 * fem,
    height: 500 * fem,
    fit: BoxFit.cover,
  );
}

Image iremiImg =
    workImg(path: _semiInvisiblePath); //TODO: Change
Image jeiomImg = workImg(path: "../assets/images/jeiom.png");

/// About me section
Image aboutMeImage({required String path}) {
  return Image(
    image: AssetImage(path),
    width: 282 * fem,
    height: 374 * fem,
    fit: BoxFit.cover,
  );
}

Image aboutMeImageUrl({required String url}) {
  return Image.network(
    url,
    width: 282 * fem,
    height: 374 * fem,
    fit: BoxFit.cover,
  );
}

Image aboutMeDesignImg = aboutMeImageUrl(
    url:
        "https://assets.telegraphindia.com/telegraph/2022/Feb/1644870612_design.jpg");
Image aboutMeChessImg = aboutMeImageUrl(
    url:
        "https://media.cnn.com/api/v1/images/stellar/prod/230104173032-02-chess-stock.jpg?c=original");
Image aboutMeMusicImg =
    aboutMeImageUrl(url: "https://cdn.fuelrocks.com/1665122987550.jpg");

/// Footer Icons
Image footerImg({required String path, required bool isHovering}) {
  Color? color;
  if (isHovering) {
    color = primaryColor;
  } else {
    color = Colors.white;
  }

  return Image(
    image: AssetImage(path),
    width: 100 * fem,
    height: 100 * fem,
    color: color,
  );
}

Image gitHubImg({required bool isHovering}) {
  String path = "../assets/images/github_img.png";
  return footerImg(path: path, isHovering: isHovering);
}

Image mailImg({required bool isHovering}) {
  String path = "../assets/images/mail_img.png";
  return footerImg(path: path, isHovering: isHovering);
}

Image linkedinImg({required bool isHovering}) {
  String path = "../assets/images/linkedin_img.png";
  return footerImg(path: path, isHovering: isHovering);
}

/// Other icons - arrows and logos
Image logoImg = Image(
  image: AssetImage(_invisiblePath), // TODO: Change
  width: 100 * fem,
  height: 100 * fem,
  color: Colors.white,
);

Image arrowDownImg = Image.network(
  "https://cdn-icons-png.flaticon.com/512/5093/5093064.png",
  width: 20 * fem,
  height: 10 * fem,
  color: Colors.white,
);

Image arrowRightImg = Image.network(
  "https://cdn.iconscout.com/icon/free/png-256/right-arrow-1780566-1514442.png",
  width: 12 * fem,
  height: 19 * fem,
  color: Colors.white,
  alignment: Alignment.center,
);

/*
/// Other stuff - TODO: Delete?
Widget _flutterColoredIconWeb({required String url}) {
  return Center(
    child: SizedBox(
      width: 200 * fem,
      height: 200 * fem,
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget _flutterColoredIconProject({required String path}) {
  return Center(
    child: SizedBox(
      width: 200 * fem,
      height: 200 * fem,
      child: Image(
        image: AssetImage(path),
        width: 105 * fem,
        height: 105 * fem,
      ),
    ),
  );
}

Widget _gitHubIcon = TextButton(
  // mail55MzS (50:639)
  onPressed: () {},
  style: TextButton.styleFrom(
    padding: EdgeInsets.zero,
  ),
  child: Container(
    width: double.infinity,
    height: 180 * fem,
    child: Image.network(
      "[Image url]",
      width: 180 * fem,
      height: 180 * fem,
    ),
  ),
);
*/
