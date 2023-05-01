import 'package:url_launcher/url_launcher.dart';

Future<void> launchMyUrl(String urlString) async {
  Uri url = Uri.parse(urlString);
  if (!await launchUrl(url)) {
    print('Could not launch $url');
    throw Exception('Could not launch $url');
  }
}

Future<void> _emailLaunchMyUrl(String email) async {
  Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: email,
  );
  if (!await launchUrl(emailLaunchUri)) {
    print('Could not launch $emailLaunchUri');
    throw Exception('Could not launch $emailLaunchUri');
  }
}

void sendEmail(String recipient) {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: recipient,
  );

  //TODO:  (html.)window.open(emailLaunchUri.toString(), '_blank');
}

/*
Future<void> launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    print("Could not launch $url");
    throw Exception('Could not launch $url');
  }
}
*/
