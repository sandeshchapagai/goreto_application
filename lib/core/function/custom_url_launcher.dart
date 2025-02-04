import 'package:url_launcher/url_launcher.dart';

import '../../utils/console.dart';

class CustomUrlLaunch {
  static Future<void> launchInBrowser(String url, {LaunchMode? mode}) async {
    try {
      if (!await launchUrl(
        Uri.parse(url),
        mode: mode ?? LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    } catch (e) {
      consolelog(e.toString());
    }
  }
}
