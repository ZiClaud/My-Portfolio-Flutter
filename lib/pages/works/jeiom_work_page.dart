import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/work_page_widgets.dart';

class JeiomPage extends StatelessWidget {
  const JeiomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainWorkPage(
      title: 'JEIOM App',
      description1: 'Lorem ipsum dolor sit amet, consectetur',
      descriptionBold1:
          ' adipiscing elit. Ultrices lorem non feugiat egestas amet.',
      description2: 'Lorem ipsum dolor sit amet, consectetur',
      descriptionBold2:
          'adipiscing elit. Ultrices lorem non feugiat egestas amet.',
      images: [
        WorkPageImage(url: 'https://i.imgur.com/9phy7Yo.png'),
        WorkPageImage(url: 'https://i.imgur.com/nu9WG4d.png'),
        WorkPageImage(url: 'https://i.imgur.com/cnQv4yJ.png'),
        WorkPageImage(url: 'https://i.imgur.com/NiRigYm.png'),
      ],
    );
  }
}
