import 'package:flutter/material.dart';

//TODO: REMOVE

double fem = 1;
double ffem = 1;

void setFEMeFFEM(BuildContext context) {
  fem = MediaQuery.of(context).size.width / 1536;
  ffem = MediaQuery.of(context).size.width / 1536;
}

EdgeInsets defaultPadding() {
  return EdgeInsets.symmetric(horizontal: 112 * fem);
}

double _screenWidth = 0; // TODO: Put to 0
double _screenHeight = 0; // TODO: put to 0

void setScreenWidthHeight(BuildContext context) {
  // TODO: call when app starts and when screen rotates/changes
  _screenWidth = MediaQuery.of(context).size.width;
  _screenHeight = MediaQuery.of(context).size.height;
}

double getScreenWidth() {
  return _screenWidth;
}

double getScreenHeight() {
  return _screenHeight;
}
