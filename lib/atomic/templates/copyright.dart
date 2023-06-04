import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/colors.dart';
import 'package:my_portfolio/atomic/atoms/typography.dart';

class Copyright extends StatelessWidget {
  const Copyright({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(
        '© 2023 Claudio Di Maio',
        style: h5Light(context, color: neutral2Color),
        textAlign: TextAlign.center,
      ),
    );
  }
}
