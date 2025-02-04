import 'package:flutter/services.dart' show rootBundle;

import '../services/di_injection/get_di_injection.dart';

class AppVersion {
  static fetchAppVersion() async {
    var appVersion = await extractAppVersion();
    await secureStorage.saveAppVersion(appVersion: appVersion);
  }

  static Future<String> extractAppVersion() async {
    final content = await rootBundle.loadString('pubspec.yaml');
    final lines = content.split('\n');
    for (var line in lines) {
      if (line.startsWith('version:')) {
        return line.split(':')[1].trim().split('+')[0].trim();
      }
    }
    return 'app_x.x.x';
  }
}
