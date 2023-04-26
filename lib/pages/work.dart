import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';

import '../theme/container.dart';

Widget getWorkPage() {
  return Container(
    // carddML (39:631)
    padding: const EdgeInsets.fromLTRB(16 * fem, 16 * fem, 16 * fem, 16 * fem),
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(),
      borderRadius: BorderRadius.circular(5 * fem),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _iremi,
        _jeiom,
      ],
    ),
  );
}

Widget _iremi = container1(
  imageURL: "",
  title: "Iremi App",
  description: "description",
  descriptionBold: "descriptionBold",
  category: "Mobile App",
  link: "link",
);

Widget _jeiom = container2(
  imageURL: "",
  title: "JEIOM App",
  description: "description",
  descriptionBold: "descriptionBold",
  category: "Mobile App",
  link: "link",
);
