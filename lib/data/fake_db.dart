import 'package:my_portfolio/atomic/pages/work_page.dart';
import 'package:my_portfolio/data/basics/work.dart';
import 'package:my_portfolio/data/basics/work_page.dart';

const WorkData iremi = WorkData(
  title: "Iremi App",
  description: "iremi_description1",
  descriptionBold: "iremi_description2",
  category: "Mobile App",
  pageData: iremiPage,
  url: "https://i.imgur.com/eoEx6Tth.png?1",
  urlHD: "https://i.imgur.com/eoEx6Tt.png?1",
);

const WorkData jeiom = WorkData(
  title: "JEIOM Website",
  description: "jeiom_description1",
  descriptionBold: "jeiom_description2",
  category: "Website",
  pageData: jeiomPage,
  urlHD: "https://i.imgur.com/nu9WG4d.png",
);

const WorkData website = WorkData(
  title: "This website",
  description: "This website was developed by me using ",
  descriptionBold: "Flutter and Dart.",
  category: "Website",
  urlHD: "https://i.imgur.com/5yosKhp.png",
);

const WorkPageData iremiPage = WorkPageData(
  title: 'Iremi App',
  skills: ['Flutter', 'Dart', 'SQLite'],
  description1: 'iremi_page_description1',
  descriptionBold1: 'iremi_page_description2',
  description2: 'iremi_page_description3',
  descriptionBold2: 'iremi_page_description4',
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

const WorkPageData jeiomPage = WorkPageData(
  title: 'JEIOM23 Website',
  skills: ['React', 'TailwindCSS', 'NodeJS'],
  description1: 'jeiom_page_description1',
  descriptionBold1: 'jeiom_page_description2',
  description2: 'jeiom_page_description3',
  descriptionBold2: 'jeiom_page_description4',
  images: [
    WorkPageImage(urlHD: 'https://i.imgur.com/9phy7Yo.png'),
    WorkPageImage(urlHD: 'https://i.imgur.com/nu9WG4d.png'),
    WorkPageImage(urlHD: 'https://i.imgur.com/cnQv4yJ.png'),
    WorkPageImage(urlHD: 'https://i.imgur.com/NiRigYm.png'),
  ],
);
