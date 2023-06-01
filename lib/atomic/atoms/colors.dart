import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF3688FF);
const Color backgroundColor = Color(0xFF010208);
const Color neutral1Color = Color(0xFFE3E4E6);
const Color neutral2Color = Color(0x8CE3E4E6);
const Color whiteColor = Color(0xFFFFFFFF);

const LinearGradient backgroundColorGradient = LinearGradient(
  begin: Alignment(0, -1),
  end: Alignment(0, 1),
  colors: <Color>[
    Color(0xff010208),
    Color(0xff010206),
    Color(0xff040008),
    Color(0xff010101),
    Color(0xff010101),
    Color(0xff010101),
    Color(0xff010101)
  ],
  stops: <double>[0.164, 0.205, 0.248, 0.305, 0.341, 0.362, 1],
);
