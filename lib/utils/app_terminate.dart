import 'package:flutter/services.dart';

import 'custom_toasts.dart';

DateTime? currentBackPressTime;

terminateApp() {
  DateTime now = DateTime.now();
  if (currentBackPressTime == null ||
      now.difference(currentBackPressTime ?? DateTime.now()) >
          const Duration(seconds: 1)) {
    currentBackPressTime = now;
    return CustomToasts.showToast(msg: "Press again to exit");
  }
  SystemNavigator.pop();
}
