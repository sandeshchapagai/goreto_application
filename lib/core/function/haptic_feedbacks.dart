import 'package:flutter/services.dart';

import '../../utils/platform_checker.dart';

class HapticFeedbacks {
  static vibrate() =>
      isIOS ? HapticFeedback.lightImpact() : HapticFeedback.vibrate();
}
