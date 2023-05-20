import 'package:flutter/material.dart';

navigateToPage(BuildContext context, String pageRoute) {
  return Navigator.pushNamed(context, pageRoute);
}

navigateToHomePage(BuildContext context) {
  // TODO: Fix or remove - Maybe it's already fixed, needs testing
  //  return Navigator.pushNamed(context, '/');
}
