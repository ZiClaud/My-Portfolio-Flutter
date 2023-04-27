import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';

/// SKILLS
Image skillsImg({required String path}){
  return Image(
    image: AssetImage(path),
    fit: BoxFit.cover,
  );
}

Image flutterImg = skillsImg(path: "../assets/images/flutterimg.png");

Image sqlImg = skillsImg(path: "../assets/images/sqlimg.png");

Image pythonImg = skillsImg(path: "../assets/images/pythonimg.png");

Image javaImg = skillsImg(path: "../assets/images/javaimg.png");

/// WORKS
Image workImg({required String path}){
  return Image(
    image: AssetImage(path),
    width: 591 * fem,
    height: 500 * fem,
  );
}

Image iremiImg = workImg(path: "../assets/images/iremi.png");

Image jeiomImg = workImg(path: "../assets/images/jeiom.png");

Image invisibleImg = workImg(path: "../assets/images/error.png");


/// Cotact me Icons
// TODO

/// Other icons - arrows and logos
// TODO

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
