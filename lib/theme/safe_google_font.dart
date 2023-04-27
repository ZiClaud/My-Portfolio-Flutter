import 'package:flutter/material.dart';

double fem = 1;
double ffem = 1;

void setFEMeFFEM(BuildContext context) {
  fem = MediaQuery.of(context).size.width / 1536;
  ffem = MediaQuery.of(context).size.width / 1536;
}
