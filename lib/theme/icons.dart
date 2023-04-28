import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';

String invisiblePath = "../assets/images/invisible.png";

/// SKILLS
Image skillImg({required String path, Color? color}) {
  return Image(
    image: AssetImage(path),
    fit: BoxFit.cover,
    color: color,
  );
}

// Used for testing
Image invisibleSkillImg = skillImg(path: invisiblePath);

Image flutterImg({required bool isHovering}) {
  if (isHovering) {
    return skillImg(path: "../assets/images/flutterimg.png");
  } else {
    return skillImg(
        path: "../assets/images/flutterimg.png", color: Colors.white);
  }
}

Image sqlImg({required bool isHovering}) {
  if (isHovering) {
    return skillImg(path: "../assets/images/sqlimg.png");
  } else {
    return skillImg(path: "../assets/images/sqlimg.png", color: Colors.white);
  }
}

Image pythonImg({required bool isHovering}) {
  if (isHovering) {
    return skillImg(path: "../assets/images/pythonimg.png");
  } else {
    return skillImg(
        path: "../assets/images/pythonimg.png", color: Colors.white);
  }
}

Image javaImg({required bool isHovering}) {
  if (isHovering) {
    return skillImg(path: "../assets/images/javaimg.png");
  } else {
    return skillImg(path: "../assets/images/javaimg.png", color: Colors.white);
  }
}

/// WORKS
Image workImg({required String path}) {
  return Image(
    image: AssetImage(path),
    width: 591 * fem,
    height: 500 * fem,
  );
}

// Used for testing
Image invisibleWorkImg = workImg(path: invisiblePath);

Image iremiImg = workImg(path: "../assets/images/invisible.png"); //TODO: Change
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

// Used for testing
Image invisibleAboutMeImg = aboutMeImage(path: invisiblePath);

Image aboutMe1Img = aboutMeImageUrl(
    url:
        "https://assets.telegraphindia.com/telegraph/2022/Feb/1644870612_design.jpg");
Image aboutMe2Img = aboutMeImageUrl(
    url:
        "https://i.guim.co.uk/img/media/759f700c9f1d288f76f86a1dc44e37d1cf05e57a/0_124_5100_3059/master/5100.jpg?width=465&quality=85&dpr=1&s=none");
Image aboutMe3Img =
    aboutMeImageUrl(url: "https://cdn.fuelrocks.com/1665122987550.jpg");

/// Footer Icons
Image footerImg({required String path}) {
  return Image(
    image: AssetImage(path),
    width: 100 * fem,
    height: 100 * fem,
    color: Colors.white,
  );
}

// Used for testing
Image invisibleFooterImg = footerImg(path: invisiblePath);

Image gitHubImg = footerImg(path: "../assets/images/github_img.png");
Image mailImg = footerImg(path: "../assets/images/mail_img.png");
Image linkedinImg = footerImg(path: "../assets/images/linkedin_img.png");

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
