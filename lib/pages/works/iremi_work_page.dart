import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/utils/navigate_to_page.dart';

class IremiPage extends StatelessWidget {
  const IremiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Navigator.push(context, testPageRoute); // TODO: Change/Fix context
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
