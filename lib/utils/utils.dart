import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:url_launcher/url_launcher.dart';

/// Default padding for mobile and desktop
EdgeInsets defaultPadding(BuildContext context) {
  if (ResponsiveWidget.isMobile(context)) {
    return const EdgeInsets.symmetric(horizontal: 0);
  }
  return const EdgeInsets.symmetric(horizontal: 112);
}


BorderRadius getContainerRadius() {
  return BorderRadius.circular(30);
}

BoxDecoration getContainerDecorationBorder() {
  return BoxDecoration(
    borderRadius: getContainerRadius(),
    border: Border.all(color: neutral1Color, width: 2),
  );
}

Future<void> launchMyUrl(String urlString) async {
  Uri url = Uri.parse(urlString);
  if (!await launchUrl(url)) {
    print('Could not launch $url');
    throw Exception('Could not launch $url');
  }
}

Future<void> _emailLaunchMyUrl(String email) async {
  Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: email,
  );
  if (!await launchUrl(emailLaunchUri)) {
    print('Could not launch $emailLaunchUri');
    throw Exception('Could not launch $emailLaunchUri');
  }
}

void sendEmail(String recipient) {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: recipient,
  );

  //TODO:  (html.)window.open(emailLaunchUri.toString(), '_blank');
}

/*
Future<void> launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    print("Could not launch $url");
    throw Exception('Could not launch $url');
  }
}
*/
