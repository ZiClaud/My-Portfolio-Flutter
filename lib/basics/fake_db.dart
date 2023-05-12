import 'package:my_portfolio/basics/work.dart';
import 'package:my_portfolio/widgets/work_page.dart';

const Work iremi = Work(
  title: "Iremi App",
  description:
      "I developed this app entirely on my own, and it offers users a range of breathing exercises that are specifically designed to ",
  descriptionBold: "promote relaxation and mindfulness.",
  category: "Mobile App",
  pageRoute: '/iremi',
  url: "https://i.imgur.com/eoEx6Tth.png?1",
  urlHD: "https://i.imgur.com/eoEx6Tt.png?1",
);

const Work jeiom = Work(
  title: "JEIOM App",
  description:
      "I was part of a team that developed this app for the JEIOM 2023 event. Our goal was to create a platform that would enable users to ",
  descriptionBold:
      "organize their schedules for the event in a single, user-friendly interface.",
  category: "Mobile App",
  pageRoute: '/jeiom',
  urlHD: "https://i.imgur.com/nu9WG4d.png",
);

const Work website = Work(
  title: "This website",
  description: "This website was developed by me using ",
  descriptionBold: "Flutter and Dart.",
  category: "Website",
  urlHD: "https://i.imgur.com/5yosKhp.png",
);

const WorkPage iremiPage = WorkPage(
  title: 'Iremi App',
//      skills: ['Flutter', 'Dart', 'SQLite'],
  description1: 'Iremi is a mobile app designed to help users',
  descriptionBold1: 'combat anxiety through guided breathing exercises.',
  description2:
      'Using Flutter and Dart, I have created a simple and intuitive app that offers a variety of breathing exercises tailored to the user\'s needs.\nThe app also includes a progress tracker that allows users to monitor their breathing habits and',
  descriptionBold2: 'track their progress over time.',
  images: [
    WorkPageImage(
        url: 'https://i.imgur.com/eoEx6Tth.png?1',
        urlHD: 'https://i.imgur.com/eoEx6Tt.png?1'),
    WorkPageImage(
        url: 'https://i.imgur.com/zf0f2OAh.png',
        urlHD: 'https://i.imgur.com/zf0f2OA.png'),
    WorkPageImage(
        url: 'https://i.imgur.com/rzRn7Ush.png',
        urlHD: 'https://i.imgur.com/rzRn7Us.png'),
    WorkPageImage(
        url: 'https://i.imgur.com/34SF2m0h.png',
        urlHD: 'https://i.imgur.com/34SF2m0.png'),
  ],
);

const WorkPage jeiomPage = WorkPage(
  title: 'JEIOM App - Page is in work in progress',
  description1: 'Lorem ipsum dolor sit amet, consectetur',
  descriptionBold1:
      ' adipiscing elit. Ultrices lorem non feugiat egestas amet.',
  description2: 'Lorem ipsum dolor sit amet, consectetur',
  descriptionBold2: 'adipiscing elit. Ultrices lorem non feugiat egestas amet.',
  images: [
    WorkPageImage(urlHD: 'https://i.imgur.com/9phy7Yo.png'),
    WorkPageImage(urlHD: 'https://i.imgur.com/nu9WG4d.png'),
    WorkPageImage(urlHD: 'https://i.imgur.com/cnQv4yJ.png'),
    WorkPageImage(urlHD: 'https://i.imgur.com/NiRigYm.png'),
  ],
);
