import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/colors.dart';
import 'package:my_portfolio/atomic/templates/about_me.dart';
import 'package:my_portfolio/atomic/templates/certificates.dart';
import 'package:my_portfolio/atomic/templates/copyright.dart';
import 'package:my_portfolio/atomic/templates/footer.dart';
import 'package:my_portfolio/atomic/templates/home.dart';
import 'package:my_portfolio/atomic/templates/skills.dart';
import 'package:my_portfolio/atomic/templates/works.dart';
import 'package:my_portfolio/utils/navigation.dart';

class MainPage extends StatelessWidget {
  final List<Widget> items = const [
    HomePage(),
    SkillsPage(),
    WorkPage(),
    CertificatesPage(),
    AboutMePage(),
    FooterPage(),
    Copyright(),
  ];

  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ScrollablePage(children: items),
      ),
    );
  }
}
