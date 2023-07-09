import 'package:my_portfolio/utils/utils.dart';

/// Logo
const String logoPath = "../assets/images/ZC_Logo.png";

/// Arrows
const String arrowDown =
    "https://cdn-icons-png.flaticon.com/512/5093/5093064.png";
const String arrowRight = "../assets/images/arrow_right.svg";

/// Pixels - White and Transparent
const String invisiblePath = "../assets/images/invisible.png";
const String semiInvisiblePath = "../assets/images/semi_invisible.png";

/// Skills
const flutterImgPath = "../assets/images/flutter.svg";
const sqlImgPath = "../assets/images/dart.svg";
const pythonImgPath = "../assets/images/react.svg";
const javaImgPath = "../assets/images/java.svg";
// TODO: Firebase?

/// About me
const String aboutMeDesignImgUrl =
    "https://assets.telegraphindia.com/telegraph/2022/Feb/1644870612_design.jpg";
const String aboutMeChessImgUrl =
    "https://media.cnn.com/api/v1/images/stellar/prod/230104173032-02-chess-stock.jpg?c=original";
const String aboutMeMusicImgUrl = "https://cdn.fuelrocks.com/1665122987550.jpg";

/// Footer
const String gitHubPath = "../assets/images/github_img.svg";
void Function() gitHubPressed = () => launchMyUrl('https://github.com/ZiClaud');

const String linkedinPath = "../assets/images/linkedin_img.svg";
void Function() linkedinPressed =
    () => launchMyUrl('https://www.linkedin.com/in/claudio-di-maio/');

const String mailPath = "../assets/images/mail_img.svg";
void Function() mailPressed = () => sendEmail("claudiodimaiozc@gmail.com");
/*
      try {
        sendEmail("claudiodimaiozc@gmail.com");
      } catch (e) {
        //TODO: showDialog
      }
 */
