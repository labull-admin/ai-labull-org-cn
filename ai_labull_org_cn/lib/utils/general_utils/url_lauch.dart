import 'package:url_launcher/url_launcher.dart';

Future<void> launchTheUrl({required Uri url}) async {
  if (!await launchUrl(
    url,
    webOnlyWindowName: '_blank', // This targets a new browser tab
  )) {
    throw Exception('Could not launch $url');
  }
}
