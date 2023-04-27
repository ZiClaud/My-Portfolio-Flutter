import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';

String invisiblePath = "../assets/images/invisible.png";

/// SKILLS
Image skillImg({required String path}) {
  return Image(
    image: AssetImage(path),
    fit: BoxFit.cover,
  );
}

Image invisibleSkillImg = skillImg(path: invisiblePath); /// Used for testing

Image flutterImg = skillImg(path: "../assets/images/flutterimg.png");
Image sqlImg = skillImg(path: "../assets/images/sqlimg.png");
Image pythonImg = skillImg(path: "../assets/images/pythonimg.png");
Image javaImg = skillImg(path: "../assets/images/javaimg.png");

/// WORKS
Image workImg({required String path}) {
  return Image(
    image: AssetImage(path),
    width: 591 * fem,
    height: 500 * fem,
  );
}

Image invisibleWorkImg = workImg(path: invisiblePath); /// Used for testing

Image iremiImg = workImg(path: "../assets/images/invisible.png"); //TODO: Change
Image jeiomImg = workImg(path: "../assets/images/jeiom.png");

/// Footer Icons
Image footerImg({required String path}) {
  return Image(
    image: AssetImage(path),
    width: 100 * fem,
    height: 100 * fem,
    color: Colors.white,
  );
}

Image invisibleFooterImg = footerImg(path: invisiblePath); /// Used for testing

Image gitHubImg = footerImg(path: "../assets/images/github_img.png");
Image mailImg = footerImg(path: "../assets/images/mail_img.png");
Image linkedinImg = footerImg(path: "../assets/images/linkedin_img.png");

/// About me section
// TODO

/// Other icons - arrows and logos
Image logoImg = Image(
  image: AssetImage(invisiblePath), // TODO: Change
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

Image arrowRightImg = Image(
  image: AssetImage(invisiblePath), // TODO: Change
  width: 100 * fem,
  height: 100 * fem,
  color: Colors.white,
);

/// Other stuff
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
