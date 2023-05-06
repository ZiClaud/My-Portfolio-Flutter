import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/work_page_containers.dart';

class IremiPage extends StatelessWidget {
  const IremiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainWorkPage(
      title: 'Iremi App - Page is in work in progress',
      description1: 'Lorem ipsum dolor sit amet, consectetur',
      descriptionBold1:
          ' adipiscing elit. Ultrices lorem non feugiat egestas amet.',
      description2: 'Lorem ipsum dolor sit amet, consectetur',
      descriptionBold2:
          'adipiscing elit. Ultrices lorem non feugiat egestas amet.',
      images: [
        WorkPageImage(url: 'https://i.imgur.com/eoEx6Tt.png'),
        WorkPageImage(url: 'https://i.imgur.com/zf0f2OA.png'),
        WorkPageImage(url: 'https://i.imgur.com/rzRn7Us.png'),
        WorkPageImage(url: 'https://i.imgur.com/34SF2m0.png'),
      ],
    );
  }
}
