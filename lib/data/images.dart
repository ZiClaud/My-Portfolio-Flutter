import 'package:my_portfolio/utils/utils.dart';

/// Logo
const String logoPath = "/images/ZC_Logo.png";

/// Arrows
const String arrowDown = "/images/arrow_down.svg";
const String arrowRight = "/images/arrow_right.svg";

/// Pixels - White and Transparent
const String invisiblePath = "/images/invisible.png";
const String semiInvisiblePath = "/images/semi_invisible.png";

/// Skills
const flutterImgPath = "/images/flutter.svg";
const sqlImgPath = "/images/dart.svg";
const pythonImgPath = "/images/react.svg";
const javaImgPath = "/images/java.svg";
// TODO: Firebase?

/// About me
const String aboutMeDesignImgUrl =
    "https://assets.telegraphindia.com/telegraph/2022/Feb/1644870612_design.jpg";
const String aboutMeChessImgUrl =
    "https://media.cnn.com/api/v1/images/stellar/prod/230104173032-02-chess-stock.jpg?c=original";
const String aboutMeMusicImgUrl = "https://cdn.fuelrocks.com/1665122987550.jpg";

/// Footer
const String gitHubPath = "/images/github_img.svg";
void Function() gitHubPressed = () => launchMyUrl('https://github.com/ZiClaud');

const String linkedinPath = "/images/linkedin_img.svg";
void Function() linkedinPressed =
    () => launchMyUrl('https://www.linkedin.com/in/claudio-di-maio/');

const String mailPath = "/images/mail_img.svg";
void Function() mailPressed = () => sendEmail("claudiodimaiozc@gmail.com");
